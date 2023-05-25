Feature: VALIDER LE PANIER

    # Internaute n'est pas connecté à un compte
    Scenario: Internaute non connecte valide son panier qui contient un produit_SN
        
        Given L_internaute n_est pas connecte a un compte
        And L_internaute est sur la page de son panier qui contient le produit : "Le seigneur des anneaux : Le retour du Roi"
        When L_internaute valide son panier
        Then Le site Nozama demande a l_internaute de se connecter


    Scenario: Internaute non connecte valide son panier qui ne contient aucun produit_SE
        
        Given L_internaute n_est pas connecte a un compte
        And L_internaute est sur la page de son panier qui est vide
        When L_internaute valide son panier
        Then Le site Nozama affiche un message d_erreur : "Vous n_avez aucun article dans votre panier"


    # Internaute est connecté à un compte
    Scenario: Internaute connecte valide son panier qui contient un produit_SA
        
        Given L_internaute est connecte a son compte
        And L_internaute est sur la page de son panier qui contient le produit : "Le seigneur des anneaux : Le retour du Roi"
        When L_internaute valide son panier
        Then Le site Nozama affiche l_interface de commande


    Scenario: Internaute connecte valide son panier qui ne contient aucun produit_SE
        
        Given L_internaute est connecte a son compte
        And L_internaute est sur la page de son panier qui est vide
        When L_internaute valide son panier
        Then Le site Nozama affiche un message d_erreur : "Vous n_avez aucun article dans votre panier"


#INT_US_021: En tant qu'internaute, je souhaite consulter mon panier, de façon a valider mon panier
#Auteur: Philippe - 29/04/23
#Reviseur: Gwen - 18/04/23
#Rev2: Kerstin - Yann - 09/05/2023
#Revision: Meliza - 19/05/2023
#Validation PO:


