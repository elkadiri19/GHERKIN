Feature: AFFICHER INFORMATIONS PANIER

    Scenario Outline: Internaute affiche les informations detaillees des produits de son panier_SN
        # Il y a 2 produits dans le panier
        Given L_internaute possede une <quantite1> de <produit1> au <prix_unitaire1> et <prix_total1> dans son panier
        And L_internaute possede une <quantite2> de <produit2> au <prix_unitaire2> et <prix_total2> dans son panier
        When L_internaute est sur la page de son panier affichant egalement <prix_panier>
        Then Le site Nozama affiche les informations detaillees des <produit1> et <produit2> de son panier

        # prix_total = prix_unitaire * quantite
        # prix_panier = prix_total1 + prix_total2
        # Ci dessous exemples pour un internaute A et un internaute B
        Examples:
        | produit1       | produit2                                      | quantite1  | quantite2 | prix_unitaire1 | prix_unitaire2 | prix_total1 | prix_total2 | prix_panier |
        | les misérables | le seigneur des anneaux : le retour du roi    | 1          | 1         | 10€            | 15€            | 10€         |   15€       | 25€         |
        | les misérables | le seigneur des anneaux : le retour du roi    | 5          | 2         | 10€            | 15€            | 50€         |   30€       | 80€         |
        

    Scenario: Internaute affiche les informations detaillees des produits de son panier avec un panier vide_SE
        
        Given L_internaute ne possede aucun <produit> dans son panier
        When L_internaute accede a la page de son panier
        Then Le site Nozama affiche un panier vide

#INT_US_022: En tant qu'internaute, je souhaite pouvoir afficher les informations detaillees de mon panier (quantite produit, prix unitaire, prix total), de façon a pouvoir gerer mon panier
#Auteur: Philippe - 29/04/23
#Reviseur: Gwen -18/04/23
#Rev2 : Kerstin - Yann - 09/05/2023
#Revision: Meliza - 19/05/2023
#Validation PO:
    