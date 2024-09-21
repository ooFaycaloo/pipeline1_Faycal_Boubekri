import mysql.connector

#connexion a mysql
def connect_to_database():
    try:
        conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="root",
            database="Ecole"
        )
        return conn
    except mysql.connector.Error as err:
        print(f"Erreur: {err}")
        return None

def fetch_data(cursor):
    cursor.execute("SELECT id, prenom, nom, num_salle, telephone, annee_diplome FROM etudiant")
    eleves = cursor.fetchall()
    
    cursor.execute("SELECT id, prenom, nom, dep, num_salle, telephone FROM enseignant")
    enseignants = cursor.fetchall()

    return eleves, enseignants

def organize_data(eleves, enseignants):
    dict_eleves = {}
    dict_enseignants = {}

    # regrouper les élèves par numéro de salle
    for eleve in eleves:
        id_eleve, prenom, nom, numero_salle, num, annee = eleve
        if numero_salle not in dict_eleves:
            dict_eleves[numero_salle] = []
        dict_eleves[numero_salle].append({
            'id': id_eleve,
            'prenom': prenom,
            'nom': nom,
            'num': num,
            'annee': annee
        })

    # regrouper les enseignants par numéro de salle
    for enseignant in enseignants:
        id_enseignant, prenom, nom, specialite, numero_salle, telephone = enseignant
        dict_enseignants[numero_salle] = {
            'id': id_enseignant,
            'prenom': prenom,
            'nom': nom,
            'specialite': specialite,
            'telephone': telephone
        }

    return dict_eleves, dict_enseignants

#calcule du nombre d'eleve par ensigant
def count_students_by_teacher(dict_eleves, dict_enseignants):
    compteur_eleves_par_enseignant = {}
    for numero_salle, liste_eleves in dict_eleves.items():
        enseignant = dict_enseignants.get(numero_salle, None)

        if enseignant:
            id_enseignant = enseignant['id']
            if id_enseignant not in compteur_eleves_par_enseignant:
                compteur_eleves_par_enseignant[id_enseignant] = {
                    'nom_complet': f"{enseignant['prenom']} {enseignant['nom']}",
                    'specialite': enseignant['specialite'],
                    'compteur': 0
                }
            compteur_eleves_par_enseignant[id_enseignant]['compteur'] += len(liste_eleves)
    return compteur_eleves_par_enseignant

#afficher le resultas du nombre d'éleve par enseigant
def display_results(compteur_eleves_par_enseignant):
    for id_enseignant, infos in compteur_eleves_par_enseignant.items():
        print(f"Enseignant: {infos['nom_complet']} ")
        print(f"  Nombre d'élèves : {infos['compteur']}")

def main():

    conn = connect_to_database()
    if conn is None:
        return

    cursor = conn.cursor()
    eleves, enseignants = fetch_data(cursor)
    dict_eleves, dict_enseignants = organize_data(eleves, enseignants)
    compteur_eleves_par_enseignant = count_students_by_teacher(dict_eleves, dict_enseignants)
    display_results(compteur_eleves_par_enseignant)
    cursor.close()
    conn.close()
    
if __name__ == "__main__":
    main()


