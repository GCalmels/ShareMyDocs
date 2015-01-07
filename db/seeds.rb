#!/bin/env ruby
# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Creation des DocumentTypes

annales = DocumentType.create nom: 'Annales'
QCM = DocumentType.create nom: 'QCM'
cours = DocumentType.create nom: 'Cours'
tp = DocumentType.create nom: 'TP'
td = DocumentType.create nom: 'TD'

# Creation des filieres

citise1 = Filiere.create nom: 'CITISE1'
citise2 = Filiere.create nom: 'CITISE2'
fi1 = Filiere.create nom: 'FI1'
fi2 = Filiere.create nom: 'FI2'
fi3 = Filiere.create nom: 'FI3'
fa1 = Filiere.create nom: 'FA1'
fa2 = Filiere.create nom: 'FA2'
fa3 = Filiere.create nom: 'FA3'

# Creation des parcours

parcours1 = Parcours.create nom: 'Photonique Electronique', numero: 1
parcours2 = Parcours.create nom: 'Electronique Photonique Télécom', numero: 2
parcours3 = Parcours.create nom: 'Systèmes électroniques Télécom', numero: 3
parcours4 = Parcours.create nom: 'Imagerie et systèmes électroniques', numero: 4
parcours5 = Parcours.create nom: 'Photonique Vision', numero: 5
parcours6 = Parcours.create nom: 'Image Vision', numero: 6
parcours7 = Parcours.create nom: "Développement d'applications pour l'image", numero: 7
parcours8 = Parcours.create nom: 'Télécom réseaux', numero: 8
parcours9 = Parcours.create nom: 'Informatique Télécom réseaux', numero: 9

# Creation des semestres

s1 = Semestre.create numero: 1
s2 = Semestre.create numero: 2
s3 = Semestre.create numero: 3
s4 = Semestre.create numero: 4
s5 = Semestre.create numero: 5
s6 = Semestre.create numero: 6
s7 = Semestre.create numero: 7
s8 = Semestre.create numero: 8
s9 = Semestre.create numero: 9
s10 = Semestre.create numero: 10

# Creation des blocs

bloc1 = Bloc.create nom: 'Bases théoriques', filiere: citise1, semestre: s1
bloc2 = Bloc.create nom: 'Génie électrique', filiere: citise1, semestre: s1
bloc3 = Bloc.create nom: 'Génie informatique', filiere: citise1, semestre: s1
bloc4 = Bloc.create nom: 'Communication', filiere: citise1, semestre: s1
bloc5 = Bloc.create nom: 'Projets', filiere: citise1, semestre: s1

bloc6 = Bloc.create nom: 'Bases théoriques', filiere: citise1, semestre: s2
bloc7 = Bloc.create nom: 'Génie électrique', filiere: citise1, semestre: s2
bloc8 = Bloc.create nom: 'Génie informatique', filiere: citise1, semestre: s2
bloc9 = Bloc.create nom: 'Communication', filiere: citise1, semestre: s2
bloc10 = Bloc.create nom: 'Projets', filiere: citise1, semestre: s2

bloc11 = Bloc.create nom: 'Bases théoriques', filiere: citise2, semestre: s3
bloc12 = Bloc.create nom: 'Génie électrique', filiere: citise2, semestre: s3
bloc13 = Bloc.create nom: 'Génie informatique', filiere: citise2, semestre: s3
bloc14 = Bloc.create nom: 'Communication', filiere: citise2, semestre: s3
bloc15 = Bloc.create nom: 'Projets', filiere: citise2, semestre: s3

bloc16 = Bloc.create nom: 'Bases théoriques', filiere: citise2, semestre: s4
bloc17 = Bloc.create nom: 'Génie électrique', filiere: citise2, semestre: s4
bloc18 = Bloc.create nom: 'Génie informatique', filiere: citise2, semestre: s4
bloc19 = Bloc.create nom: 'Communication', filiere: citise2, semestre: s4
bloc20 = Bloc.create nom: 'Projets', filiere: citise2, semestre: s4
bloc21 = Bloc.create nom: 'Stage', filiere: citise2, semestre: s4

bloc22 = Bloc.create nom: 'Base des connaissances différenciées', filiere: fi1, semestre: s5
bloc23 = Bloc.create nom: 'Mathématiques et physique', filiere: fi1, semestre: s5
bloc24 = Bloc.create nom: 'Electronique et informatique', filiere: fi1, semestre: s5
bloc25 = Bloc.create nom: 'Langue Vivante', filiere: fi1, semestre: s5
bloc26 = Bloc.create nom: 'Ingénieur, entreprise et société', filiere: fi1, semestre: s5

bloc27 = Bloc.create nom: 'Signaux et Systèmes Numériques', filiere: fi1, semestre: s6
bloc28 = Bloc.create nom: 'Programmation objet et système Unix', filiere: fi1, semestre: s6
bloc29 = Bloc.create nom: 'Fondamentaux TSE : Spécialités', filiere: fi1, semestre: s6
bloc30 = Bloc.create nom: 'Langue vivante', filiere: fi1, semestre: s6
bloc31 = Bloc.create nom: 'Ingénieur, entreprise et société', filiere: fi1, semestre: s6
bloc32 = Bloc.create nom: 'Stage opérationnel', filiere: fi1, semestre: s6

bloc33 = Bloc.create nom: 'Gestion de données et projet informatique', filiere: fi2, semestre: s7
bloc34 = Bloc.create nom: 'Optimisation et traitement du signal avancé', filiere: fi2, semestre: s7
bloc35 = Bloc.create nom: 'Langues vivantes', filiere: fi2, semestre: s7
bloc36 = Bloc.create nom: 'Systèmes embarqués', filiere: fi2, semestre: s7
bloc37 = Bloc.create nom: 'Ingénierie de la vision', filiere: fi2, semestre: s7
bloc38 = Bloc.create nom: "Développement d'Applications Informatiques", filiere: fi2, semestre: s7
bloc39 = Bloc.create nom: "Analyse d'images", filiere: fi2, semestre: s7
bloc40 = Bloc.create nom: 'Systèmes optiques', filiere: fi2, semestre: s7
bloc41 = Bloc.create nom: 'Codage et transmission', filiere: fi2, semestre: s7

bloc42 = Bloc.create nom: 'Ingénieur, entreprise et société', filiere: fi2, semestre: s8
bloc43 = Bloc.create nom: 'Langues vivantes', filiere: fi2, semestre: s8
bloc44 = Bloc.create nom: 'Projet industriel', filiere: fi2, semestre: s8
bloc45 = Bloc.create nom: 'Composants, signaux, systèmes', filiere: fi2, semestre: s8
bloc46 = Bloc.create nom: "De l'image à l’information", filiere: fi2, semestre: s8
bloc47 = Bloc.create nom: 'Réseaux : Commutation et Routage', filiere: fi2, semestre: s8
bloc48 = Bloc.create nom: 'Laser et Applications Photoniques', filiere: fi2, semestre: s8
bloc49 = Bloc.create nom: 'Protocoles et Services Télécoms', filiere: fi2, semestre: s8
bloc50 = Bloc.create nom: 'Développement multimédia', filiere: fi2, semestre: s8
bloc51 = Bloc.create nom: 'Option', filiere: fi2, semestre: s8

bloc52 = Bloc.create nom: 'Ingénieur, entreprise et société', filiere: fi3, semestre: s9
bloc53 = Bloc.create nom: 'Optoélectrique', filiere: fi3, semestre: s9
bloc54 = Bloc.create nom: 'Conception de systèmes numériques', filiere: fi3, semestre: s9
bloc55 = Bloc.create nom: 'Contenus numériques multimédia', filiere: fi3, semestre: s9
bloc56 = Bloc.create nom: 'Informatique Distribuée', filiere: fi3, semestre: s9
bloc57 = Bloc.create nom: "Services Réseaux d'entreprises", filiere: fi3, semestre: s9
bloc58 = Bloc.create nom: 'Systèmes embarqués nomades', filiere: fi3, semestre: s9
bloc59 = Bloc.create nom: 'Objets communicants', filiere: fi3, semestre: s9
bloc60 = Bloc.create nom: "Systèmes spécifiques d'imagerie", filiere: fi3, semestre: s9
bloc61 = Bloc.create nom: 'Réseaux multi-services', filiere: fi3, semestre: s9
bloc62 = Bloc.create nom: 'Option', filiere: fi3, semestre: s9

bloc63 = Bloc.create nom: 'Spécialité Optique', filiere: fa1, semestre: s5
bloc64 = Bloc.create nom: 'Spécialité Image Vision', filiere: fa1, semestre: s5
bloc65 = Bloc.create nom: "Fondamentaux pour l'ingénieur", filiere: fa1, semestre: s5
bloc66 = Bloc.create nom: "Sciences pour l'ingénieur", filiere: fa1, semestre: s5
bloc67 = Bloc.create nom: "Métier de l'ingénieur", filiere: fa1, semestre: s5

bloc68 = Bloc.create nom: 'Spécialité Optique', filiere: fa1, semestre: s6
bloc69 = Bloc.create nom: 'Spécialité Image Vision', filiere: fa1, semestre: s6
bloc70 = Bloc.create nom: "Fondamentaux pour l'ingénieur", filiere: fa1, semestre: s6
bloc71 = Bloc.create nom: "Sciences pour l'ingénieur", filiere: fa1, semestre: s6
bloc72 = Bloc.create nom: "Métier de l'ingénieur", filiere: fa1, semestre: s6

bloc73 = Bloc.create nom: 'Spécialité Optique', filiere: fa2, semestre: s7
bloc74 = Bloc.create nom: 'Spécialité Image Vision', filiere: fa2, semestre: s7
bloc75 = Bloc.create nom: "Fondamentaux pour l'ingénieur", filiere: fa2, semestre: s7
bloc76 = Bloc.create nom: "Sciences pour l'ingénieur", filiere: fa2, semestre: s7
bloc77 = Bloc.create nom: "Métier de l'ingénieur", filiere: fa2, semestre: s7

bloc78 = Bloc.create nom: 'Spécialité Optique', filiere: fa2, semestre: s8
bloc79 = Bloc.create nom: 'Spécialité Image Vision', filiere: fa2, semestre: s8
bloc80 = Bloc.create nom: "Sciences pour l'ingénieur", filiere: fa2, semestre: s8
bloc81 = Bloc.create nom: "Métier de l'ingénieur", filiere: fa2, semestre: s8

bloc82 = Bloc.create nom: 'Spécialité Optique', filiere: fa3, semestre: s9
bloc83 = Bloc.create nom: 'Spécialité Image Vision', filiere: fa3, semestre: s9
bloc84 = Bloc.create nom: "Option", filiere: fa3, semestre: s9
bloc85 = Bloc.create nom: "Sciences pour l'ingénieur", filiere: fa3, semestre: s9
bloc86 = Bloc.create nom: "Métier de l'ingénieur", filiere: fa3, semestre: s9

bloc87 = Bloc.create nom: 'Spécialité Optique', filiere: fa3, semestre: s10
bloc88 = Bloc.create nom: 'Spécialité Image Vision', filiere: fa3, semestre: s10
bloc89 = Bloc.create nom: "Sciences pour l'ingénieur", filiere: fa3, semestre: s10
bloc90 = Bloc.create nom: "Métier de l'ingénieur", filiere: fa3, semestre: s10

bloc91 = Bloc.create nom: 'Stage', filiere: fi3, semestre: s10

# Creation des options

option1 = Option.create nom: 'Les Semaines de la Photonique', semestre: s8
option2 = Option.create nom: 'Optimisation et intelligence Artificielle', semestre: s8
option3 = Option.create nom: "Programmation sur GPU et FPGA pour l'imagerie en temps réel", semestre: s8
option4 = Option.create nom: 'Robotique', semestre: s8
option5 = Option.create nom: 'Configuration et Administration Réseaux', semestre: s8
option6 = Option.create nom: 'Du Stockage à la transmission', semestre: s8

option7 = Option.create nom: 'Photonique Avancée', semestre: s9
option8 = Option.create nom: 'Conception de circuits intégrés', semestre: s9
option9 = Option.create nom: 'Systèmes d’informations : Architecture et sécurité', semestre: s9
option10 = Option.create nom: 'Infrastructures et services opérateurs', semestre: s9
option13 = Option.create nom: 'Imagerie Avancée', semestre: s9
option14 = Option.create nom: 'Java Académie', semestre: s9
option15 = Option.create nom: 'Entrepreneuriat', semestre: s9
option16 = Option.create nom: "Intelligence économique gestion de l'innovation", semestre: s9
option17 = Option.create nom: 'Java', semestre: s9
option18 = Option.create nom: "Perception de l'espace", semestre: s9
option19 = Option.create nom: 'Composants à Semi-conducteurs', semestre: s9
option20 = Option.create nom: 'Caractérisations et Mesures', semestre: s9
option21 = Option.create nom: 'Physique des Semi-conducteurs', semestre: s9
option22 = Option.create nom: 'Métaheuristiques', semestre: s9
option23 = Option.create nom: 'Introduction aux réseaux de neurones', semestre: s9
option24 = Option.create nom: 'Antennes et liaisons hertziennes', semestre: s9

# Creation des lv2

#lv2_1 = Lv2.create nom: '', niveau: ''

# Creation des bloc_parcours_associations

bloc_parcours1 = BlocParcoursAssociation.create bloc: bloc36, parcours: parcours1
bloc_parcours2 = BlocParcoursAssociation.create bloc: bloc40, parcours: parcours1
bloc_parcours3 = BlocParcoursAssociation.create bloc: bloc45, parcours: parcours1
bloc_parcours4 = BlocParcoursAssociation.create bloc: bloc48, parcours: parcours1
bloc_parcours5 = BlocParcoursAssociation.create bloc: bloc53, parcours: parcours1
bloc_parcours6 = BlocParcoursAssociation.create bloc: bloc58, parcours: parcours1

bloc_parcours7 = BlocParcoursAssociation.create bloc: bloc36, parcours: parcours2
bloc_parcours8 = BlocParcoursAssociation.create bloc: bloc40, parcours: parcours2
bloc_parcours9 = BlocParcoursAssociation.create bloc: bloc45, parcours: parcours2
bloc_parcours10 = BlocParcoursAssociation.create bloc: bloc49, parcours: parcours2
bloc_parcours11 = BlocParcoursAssociation.create bloc: bloc53, parcours: parcours2
bloc_parcours12 = BlocParcoursAssociation.create bloc: bloc58, parcours: parcours2
bloc_parcours13 = BlocParcoursAssociation.create bloc: bloc59, parcours: parcours2

bloc_parcours14 = BlocParcoursAssociation.create bloc: bloc36, parcours: parcours3
bloc_parcours15 = BlocParcoursAssociation.create bloc: bloc41, parcours: parcours3
bloc_parcours16 = BlocParcoursAssociation.create bloc: bloc45, parcours: parcours3
bloc_parcours17 = BlocParcoursAssociation.create bloc: bloc49, parcours: parcours3
bloc_parcours18 = BlocParcoursAssociation.create bloc: bloc54, parcours: parcours3
bloc_parcours19 = BlocParcoursAssociation.create bloc: bloc58, parcours: parcours3
bloc_parcours20 = BlocParcoursAssociation.create bloc: bloc59, parcours: parcours3

bloc_parcours21 = BlocParcoursAssociation.create bloc: bloc36, parcours: parcours4
bloc_parcours22 = BlocParcoursAssociation.create bloc: bloc39, parcours: parcours4
bloc_parcours23 = BlocParcoursAssociation.create bloc: bloc46, parcours: parcours4
bloc_parcours24 = BlocParcoursAssociation.create bloc: bloc50, parcours: parcours4
bloc_parcours25 = BlocParcoursAssociation.create bloc: bloc55, parcours: parcours4
bloc_parcours26 = BlocParcoursAssociation.create bloc: bloc58, parcours: parcours4

bloc_parcours27 = BlocParcoursAssociation.create bloc: bloc37, parcours: parcours5
bloc_parcours28 = BlocParcoursAssociation.create bloc: bloc40, parcours: parcours5
bloc_parcours29 = BlocParcoursAssociation.create bloc: bloc46, parcours: parcours5
bloc_parcours30 = BlocParcoursAssociation.create bloc: bloc48, parcours: parcours5
bloc_parcours31 = BlocParcoursAssociation.create bloc: bloc53, parcours: parcours5
bloc_parcours32 = BlocParcoursAssociation.create bloc: bloc60, parcours: parcours5

bloc_parcours33 = BlocParcoursAssociation.create bloc: bloc37, parcours: parcours6
bloc_parcours34 = BlocParcoursAssociation.create bloc: bloc39, parcours: parcours6
bloc_parcours35 = BlocParcoursAssociation.create bloc: bloc46, parcours: parcours6
bloc_parcours36 = BlocParcoursAssociation.create bloc: bloc50, parcours: parcours6
bloc_parcours37 = BlocParcoursAssociation.create bloc: bloc55, parcours: parcours6
bloc_parcours38 = BlocParcoursAssociation.create bloc: bloc60, parcours: parcours6

bloc_parcours39 = BlocParcoursAssociation.create bloc: bloc38, parcours: parcours7
bloc_parcours40 = BlocParcoursAssociation.create bloc: bloc39, parcours: parcours7
bloc_parcours41 = BlocParcoursAssociation.create bloc: bloc46, parcours: parcours7
bloc_parcours42 = BlocParcoursAssociation.create bloc: bloc50, parcours: parcours7
bloc_parcours43 = BlocParcoursAssociation.create bloc: bloc55, parcours: parcours7
bloc_parcours44 = BlocParcoursAssociation.create bloc: bloc56, parcours: parcours7
bloc_parcours45 = BlocParcoursAssociation.create bloc: bloc60, parcours: parcours7

bloc_parcours46 = BlocParcoursAssociation.create bloc: bloc38, parcours: parcours8
bloc_parcours47 = BlocParcoursAssociation.create bloc: bloc41, parcours: parcours8
bloc_parcours48 = BlocParcoursAssociation.create bloc: bloc47, parcours: parcours8
bloc_parcours49 = BlocParcoursAssociation.create bloc: bloc49, parcours: parcours8
bloc_parcours50 = BlocParcoursAssociation.create bloc: bloc57, parcours: parcours8
bloc_parcours51 = BlocParcoursAssociation.create bloc: bloc59, parcours: parcours8
bloc_parcours52 = BlocParcoursAssociation.create bloc: bloc61, parcours: parcours8

bloc_parcours53 = BlocParcoursAssociation.create bloc: bloc38, parcours: parcours9
bloc_parcours54 = BlocParcoursAssociation.create bloc: bloc41, parcours: parcours9
bloc_parcours55 = BlocParcoursAssociation.create bloc: bloc47, parcours: parcours9
bloc_parcours56 = BlocParcoursAssociation.create bloc: bloc50, parcours: parcours9
bloc_parcours57 = BlocParcoursAssociation.create bloc: bloc56, parcours: parcours9
bloc_parcours58 = BlocParcoursAssociation.create bloc: bloc61, parcours: parcours9

# Creation des matieres

matiere1 = Matiere.create nom: 'Mathématiques fondamentales', bloc: bloc1
matiere2 = Matiere.create nom: 'Mécanique', bloc: bloc1
matiere3 = Matiere.create nom: 'Optique', bloc: bloc1

matiere4 = Matiere.create nom: 'Fondements du génie électrique', bloc: bloc2
matiere5 = Matiere.create nom: 'Génie électrique', bloc: bloc2
matiere6 = Matiere.create nom: 'Electrotechnique', bloc: bloc2
matiere7 = Matiere.create nom: 'Electronique', bloc: bloc2

matiere8 = Matiere.create nom: 'Informatique', bloc: bloc3
matiere9 = Matiere.create nom: 'Electronique numérique et systèmes logiques', bloc: bloc3

matiere10 = Matiere.create nom: 'Anglais', bloc: bloc4
matiere11 = Matiere.create nom: 'Langue Vivante 2', bloc: bloc4
matiere12 = Matiere.create nom: 'Communication', bloc: bloc4
matiere13 = Matiere.create nom: 'Apprendre à travailler et à communiquer', bloc: bloc4

matiere14 = Matiere.create nom: 'Projet scientifique bibliographique', bloc: bloc5
matiere15 = Matiere.create nom: 'Etude et réalisation électronique (1)', bloc: bloc5
matiere16 = Matiere.create nom: 'Etude et réalisation électronique (2)', bloc: bloc5

matiere17 = Matiere.create nom: "Mathématiques pour l'ingénieur", bloc: bloc6
matiere18 = Matiere.create nom: 'Electrostatique', bloc: bloc6
matiere19 = Matiere.create nom: 'Magnétostatique', bloc: bloc6

matiere20 = Matiere.create nom: 'Génie électrique', bloc: bloc7
matiere21 = Matiere.create nom: 'Electrotechnique', bloc: bloc7
matiere22 = Matiere.create nom: 'Electronique', bloc: bloc7

matiere23 = Matiere.create nom: 'Informatique industrielle', bloc: bloc8
matiere24 = Matiere.create nom: 'Automatismes et réseaux', bloc: bloc8

matiere25 = Matiere.create nom: 'Anglais', bloc: bloc9
matiere26 = Matiere.create nom: 'Langue Vivante 2', bloc: bloc9

matiere27 = Matiere.create nom: 'Projet de Physique', bloc: bloc10
matiere28 = Matiere.create nom: 'Etude et réalisation électronique (3)', bloc: bloc10
matiere29 = Matiere.create nom: 'Etude et réalisation électronique (4)', bloc: bloc10

matiere30 = Matiere.create nom: "Mathématiques pour l'ingénieur", bloc: bloc11
matiere31 = Matiere.create nom: 'Métrologie', bloc: bloc11
matiere32 = Matiere.create nom: 'Thermodynamique', bloc: bloc11

matiere33 = Matiere.create nom: 'Electrotechnique', bloc: bloc12
matiere34 = Matiere.create nom: 'Electronique', bloc: bloc12
matiere35 = Matiere.create nom: 'Télécommunications : signaux logiques', bloc: bloc12

matiere36 = Matiere.create nom: 'Programmation orientée objet', bloc: bloc13
matiere37 = Matiere.create nom: 'Automatisme et réseaux', bloc: bloc13
matiere38 = Matiere.create nom: 'Automatique', bloc: bloc13
matiere39 = Matiere.create nom: 'Réseaux de terrain', bloc: bloc13

matiere40 = Matiere.create nom: 'Anglais', bloc: bloc14
matiere41 = Matiere.create nom: 'Langue Vivante 2', bloc: bloc14
matiere42 = Matiere.create nom: 'Entreprise et communication', bloc: bloc14

matiere43 = Matiere.create nom: 'Projet TIPE', bloc: bloc15

matiere44 = Matiere.create nom: "Mathématiques pour l'ingénieur", bloc: bloc16
matiere45 = Matiere.create nom: 'Ondes et propagation - Electromagnétisme', bloc: bloc16

matiere46 = Matiere.create nom: 'Télécommunications signaux numériques', bloc: bloc17

matiere47 = Matiere.create nom: 'Bases de données', bloc: bloc18
matiere48 = Matiere.create nom: 'Systèmes multitâches, système temps réel', bloc: bloc18
matiere49 = Matiere.create nom: 'Supervision et contrôle des procédés', bloc: bloc18

matiere50 = Matiere.create nom: 'Anglais', bloc: bloc19
matiere51 = Matiere.create nom: 'Connaissance des entreprises', bloc: bloc19

matiere52 = Matiere.create nom: 'Projet TIPE', bloc: bloc20

matiere53 = Matiere.create nom: 'Stage', bloc: bloc21

matiere54 = Matiere.create nom: 'Base indispensable des mathématiques', bloc: bloc22
matiere55 = Matiere.create nom: 'Electrostatique, Magnétostatique', bloc: bloc22
matiere56 = Matiere.create nom: "Base de l'algorithmique et de la programmation", bloc: bloc22
matiere57 = Matiere.create nom: 'Electronique et mesure', bloc: bloc22

matiere58 = Matiere.create nom: 'Mathématiques des signaux et des systèmes', bloc: bloc23
matiere59 = Matiere.create nom: 'Probabilités et statistiques', bloc: bloc23
matiere60 = Matiere.create nom: 'Calcul numérique', bloc: bloc23
matiere61 = Matiere.create nom: 'Electromagnétisme', bloc: bloc23

matiere62 = Matiere.create nom: 'Système de traitement électronique', bloc: bloc24
matiere63 = Matiere.create nom: "Travaux pratiques d'électronique", bloc: bloc24
matiere64 = Matiere.create nom: 'Algorithmique et structures de données', bloc: bloc24
matiere65 = Matiere.create nom: "Architecture des ordinateurs et systèmes d'exploitation", bloc: bloc24

matiere66 = Matiere.create nom: 'Anglais', bloc: bloc25
matiere67 = Matiere.create nom: 'Langue vivante 2', bloc: bloc25

matiere68 = Matiere.create nom: 'Macro économie', bloc: bloc26
matiere69 = Matiere.create nom: 'Droit des institutions nationales et internationales', bloc: bloc26
matiere70 = Matiere.create nom: 'Droit des affaires', bloc: bloc26
matiere71 = Matiere.create nom: "Techniques de recherche d'emploi", bloc: bloc26
matiere72 = Matiere.create nom: 'Techniques de communication', bloc: bloc26

matiere73 = Matiere.create nom: 'Electronique numérique', bloc: bloc27
matiere74 = Matiere.create nom: "Projets d'application électronique", bloc: bloc27
matiere75 = Matiere.create nom: 'Signaux et systèmes discrets', bloc: bloc27
matiere76 = Matiere.create nom: 'Signaux aléatoires', bloc: bloc27

matiere77 = Matiere.create nom: 'Programmation orientée objet', bloc: bloc28
matiere78 = Matiere.create nom: 'OS Unix', bloc: bloc28
matiere79 = Matiere.create nom: 'Mini-projet', bloc: bloc28

matiere80 = Matiere.create nom: "Introduction à l'image", bloc: bloc29
matiere81 = Matiere.create nom: "Introduction à l'optique photonique", bloc: bloc29
matiere82 = Matiere.create nom: 'Introduction aux réseaux', bloc: bloc29
matiere83 = Matiere.create nom: 'Introduction aux télécommunications', bloc: bloc29

matiere84 = Matiere.create nom: 'Anglais', bloc: bloc30
matiere85 = Matiere.create nom: 'Langue vivante 2', bloc: bloc30

matiere86 = Matiere.create nom: "Gestion et finance d'entreprise", bloc: bloc31
matiere87 = Matiere.create nom: 'Gestion de projet', bloc: bloc31
matiere88 = Matiere.create nom: 'Micro économie', bloc: bloc31
matiere89 = Matiere.create nom: 'Ethique de l''ingénieur', bloc: bloc31

matiere90 = Matiere.create nom: 'Stage opérationnel', bloc: bloc32

matiere91 = Matiere.create nom: 'Introduction au Web', bloc: bloc33
matiere92 = Matiere.create nom: 'Bases de données', bloc: bloc33
matiere93 = Matiere.create nom: 'Projet informatique de parcours', bloc: bloc33

matiere94 = Matiere.create nom: 'Traitement du signal avancé', bloc: bloc34
matiere95 = Matiere.create nom: 'Recherche opérationnelle', bloc: bloc34
matiere96 = Matiere.create nom: 'Optimisation continue', bloc: bloc34

matiere97 = Matiere.create nom: 'Anglais', bloc: bloc35
matiere98 = Matiere.create nom: 'Langue vivante 2', bloc: bloc35

matiere99 = Matiere.create nom: 'Systèmes embarqués à microprocesseurs', bloc: bloc36
matiere100 = Matiere.create nom: 'Circuit logiques programmables', bloc: bloc36
matiere101 = Matiere.create nom: 'Systèmes embarqués communicants', bloc: bloc36

matiere102 = Matiere.create nom: 'Perception visuelle', bloc: bloc37
matiere103 = Matiere.create nom: 'Capteurs et automatismes', bloc: bloc37
matiere104 = Matiere.create nom: 'Eclairages et acquisition des images', bloc: bloc37
matiere105 = Matiere.create nom: 'Asservissements des systèmes', bloc: bloc37

matiere106 = Matiere.create nom: 'Génie logiciel', bloc: bloc38
matiere107 = Matiere.create nom: 'Java', bloc: bloc38
matiere108 = Matiere.create nom: 'Langage de script', bloc: bloc38
matiere109 = Matiere.create nom: 'Outils de développement rapide', bloc: bloc38

matiere110 = Matiere.create nom: 'Image numérique', bloc: bloc39
matiere111 = Matiere.create nom: 'Traitement d''image', bloc: bloc39
matiere112 = Matiere.create nom: 'Image et signal', bloc: bloc39
matiere113 = Matiere.create nom: 'Morphologie mathématique', bloc: bloc39

matiere114 = Matiere.create nom: 'Optique ondulatoire et optique de Fourier', bloc: bloc40
matiere115 = Matiere.create nom: 'Lumière polarisée', bloc: bloc40
matiere116 = Matiere.create nom: 'Caractérisation et mesures', bloc: bloc40
matiere117 = Matiere.create nom: 'Fibres optiques', bloc: bloc40
matiere118 = Matiere.create nom: 'Optique expérimentale', bloc: bloc40

matiere119 = Matiere.create nom: 'Modulations et codages', bloc: bloc41
matiere120 = Matiere.create nom: 'Antennes', bloc: bloc41
matiere121 = Matiere.create nom: 'Fibres optiques', bloc: bloc41
matiere122 = Matiere.create nom: 'Supports de transmission cuivre', bloc: bloc41
matiere123 = Matiere.create nom: 'Travaux pratiques', bloc: bloc41

matiere124 = Matiere.create nom: 'Analyse financière', bloc: bloc42
matiere125 = Matiere.create nom: "Economie et management de l'innovation", bloc: bloc42
matiere126 = Matiere.create nom: 'Marketing', bloc: bloc42
matiere127 = Matiere.create nom: "Plan d'affaires", bloc: bloc42
matiere128 = Matiere.create nom: "Ethique de l'ingénieur", bloc: bloc42
matiere129 = Matiere.create nom: 'Qualité', bloc: bloc42

matiere130 = Matiere.create nom: 'Anglais', bloc: bloc43
matiere131 = Matiere.create nom: 'Langue vivante 2', bloc: bloc43

matiere132 = Matiere.create nom: 'Projet industriel', bloc: bloc44

matiere133 = Matiere.create nom: 'Automatisme', bloc: bloc45
matiere134 = Matiere.create nom: "Composants de l'électronique BF&RF", bloc: bloc45
matiere135 = Matiere.create nom: "Systèmes d'acquisition et de transformation du signal", bloc: bloc45

matiere136 = Matiere.create nom: 'Couleur', bloc: bloc46
matiere137 = Matiere.create nom: 'Analyse de texture', bloc: bloc46
matiere138 = Matiere.create nom: 'Reconnaissance de formes', bloc: bloc46
matiere139 = Matiere.create nom: 'Transformées', bloc: bloc46
matiere140 = Matiere.create nom: 'Reconstruction 3D', bloc: bloc46
matiere141 = Matiere.create nom: 'Traitement 3D', bloc: bloc46

matiere142 = Matiere.create nom: 'Commutation et routage', bloc: bloc47

matiere143 = Matiere.create nom: 'Sources lasers', bloc: bloc48
matiere144 = Matiere.create nom: 'Procédés LASER', bloc: bloc48
matiere145 = Matiere.create nom: 'Optique non linéaire', bloc: bloc48

matiere146 = Matiere.create nom: 'Interfaces graphiques', bloc: bloc50
matiere147 = Matiere.create nom: 'Bibliothèque de développement multimédia', bloc: bloc50

matiere148 = Matiere.create nom: 'Architecture télécoms', bloc: bloc49
matiere149 = Matiere.create nom: 'Télécommunications filaires', bloc: bloc49
matiere150 = Matiere.create nom: 'Télécommunications sans fils', bloc: bloc49

matiere151 = Matiere.create nom: 'Conception de systèmes optiques et photoniques', bloc: bloc51, option: option1
matiere152 = Matiere.create nom: 'Photonique aux temps courts et ultra courts', bloc: bloc51, option: option1
matiere153 = Matiere.create nom: 'Projet photonique', bloc: bloc51, option: option1

matiere154 = Matiere.create nom: 'Robotique et réseaux de capteurs', bloc: bloc51, option: option4
matiere155 = Matiere.create nom: 'FabLab', bloc: bloc51, option: option4

matiere156 = Matiere.create nom: 'Administration de réseaux', bloc: bloc51, option: option5
matiere157 = Matiere.create nom: 'Configuration de Serveurs', bloc: bloc51, option: option5

matiere158 = Matiere.create nom: 'Compression de données', bloc: bloc51, option: option6
matiere159 = Matiere.create nom: "Protection de l'information", bloc: bloc51, option: option6
matiere160 = Matiere.create nom: "Codage d'erreur et Transmission Numérique", bloc: bloc51, option: option6

matiere161 = Matiere.create nom: "Circuits logiques programmables pour l'image", bloc: bloc51, option: option3
matiere162 = Matiere.create nom: "Processeurs graphiques pour le traitement d'image", bloc: bloc51, option: option3
matiere163 = Matiere.create nom: 'Projets', bloc: bloc51, option: option3

matiere164 = Matiere.create nom: 'Programmation par contrainte', bloc: bloc51, option: option2
matiere165 = Matiere.create nom: 'Métaheuristiques', bloc: bloc51, option: option2
matiere166 = Matiere.create nom: 'Introduction aux réseaux de neurones', bloc: bloc51, option: option2

matiere167 = Matiere.create nom: 'Décision individuelle et collective', bloc: bloc52
matiere168 = Matiere.create nom: 'Droit social', bloc: bloc52
matiere169 = Matiere.create nom: "Simulation d'entretiens d''embauche", bloc: bloc52
matiere170 = Matiere.create nom: "Ethique de l'ingénieur", bloc: bloc52
matiere171 = Matiere.create nom: 'Théorie des organisations', bloc: bloc52
matiere172 = Matiere.create nom: 'Stratégie', bloc: bloc52
matiere173 = Matiere.create nom: 'Projet recherche et innovation', bloc: bloc52
matiere174 = Matiere.create nom: 'Anglais', bloc: bloc52

matiere175 = Matiere.create nom: 'Physique des semi-conducteurs', bloc: bloc53
matiere176 = Matiere.create nom: 'Composants à semi-conducteurs', bloc: bloc53
matiere177 = Matiere.create nom: "Circuits pour l'optoélectronique", bloc: bloc53
matiere178 = Matiere.create nom: 'Photométrie', bloc: bloc53
matiere179 = Matiere.create nom: 'Capteurs optiques', bloc: bloc53
matiere180 = Matiere.create nom: 'Optoélectronique pratique', bloc: bloc53

matiere181 = Matiere.create nom: 'Infrastructures', bloc: bloc57
matiere182 = Matiere.create nom: 'Serveurs, services, supervision', bloc: bloc57
matiere183 = Matiere.create nom: "Réalisation d'un SI d'entreprise", bloc: bloc57

matiere184 = Matiere.create nom: "Compression d'images", bloc: bloc55
matiere185 = Matiere.create nom: 'Vidéo', bloc: bloc55
matiere186 = Matiere.create nom: "Perception de l'espace", bloc: bloc55
matiere187 = Matiere.create nom: "Synthèse d'image", bloc: bloc55
matiere188 = Matiere.create nom: "Gestion de contenu d'image", bloc: bloc55
matiere189 = Matiere.create nom: '2D, 3D et vidéo dans le navigateur', bloc: bloc55

matiere190 = Matiere.create nom: 'Architectures matérielles sécurisées', bloc: bloc54
matiere191 = Matiere.create nom: 'Co-design, adéquation, algorithme, architecture', bloc: bloc54
matiere192 = Matiere.create nom: 'Circuits logiques configurables : applications en télécoms', bloc: bloc54
matiere193 = Matiere.create nom: 'Conception de circuits logiques complexes', bloc: bloc54

matiere194 = Matiere.create nom: 'Architecture n-tiers', bloc: bloc56
matiere195 = Matiere.create nom: "Serveurs d'applications et middleware", bloc: bloc56
matiere196 = Matiere.create nom: 'Services Web-XML', bloc: bloc56
matiere197 = Matiere.create nom: 'IHM et applications mobiles', bloc: bloc56

matiere198 = Matiere.create nom: "Systèmes d'exploitation, logiciels et périphériques embarqués", bloc: bloc58
matiere199 = Matiere.create nom: "Fonctions d'alimentation et intégrité du signal", bloc: bloc58

matiere200 = Matiere.create nom: 'Imagerie hyperspectrale', bloc: bloc60
matiere201 = Matiere.create nom: 'Imagerie thermique', bloc: bloc60
matiere202 = Matiere.create nom: 'Contrôle non destructif', bloc: bloc60
matiere203 = Matiere.create nom: 'Projet Image & Vision', bloc: bloc60

matiere204 = Matiere.create nom: 'Systèmes électroniques communicants', bloc: bloc59
matiere205 = Matiere.create nom: 'Smarts objects', bloc: bloc59

matiere206 = Matiere.create nom: 'Management de la qualité des services', bloc: bloc61
matiere207 = Matiere.create nom: 'Convergence des réseaux et des services', bloc: bloc61
matiere208 = Matiere.create nom: 'Projet Europ', bloc: bloc61

matiere209 = Matiere.create nom: 'Optique intégrée', bloc: bloc62, option: option7
matiere210 = Matiere.create nom: 'Modèles et méthodes numériques en NanoPhotonique', bloc: bloc62, option: option7
matiere211 = Matiere.create nom: 'Interaction Laser-Matière', bloc: bloc62, option: option7
matiere212 = Matiere.create nom: 'Composants à fibres', bloc: bloc62, option: option7
matiere213 = Matiere.create nom: 'Réflectométrie & Ellipsométrie', bloc: bloc62, option: option7

matiere214 = Matiere.create nom: 'Composants électroniques à semi-conducteurs', bloc: bloc62, option: option8
matiere215 = Matiere.create nom: 'Le bruit dans les circuits intégrés', bloc: bloc62, option: option8
matiere216 = Matiere.create nom: 'Les circuits RF', bloc: bloc62, option: option8
matiere217 = Matiere.create nom: 'CAO de circuits intégrés', bloc: bloc62, option: option8

matiere218 = Matiere.create nom: 'Sécurité du SI', bloc: bloc62, option: option9
matiere219 = Matiere.create nom: 'Urbanisation des SI', bloc: bloc62, option: option9
matiere220 = Matiere.create nom: 'Architectures de sécurité', bloc: bloc62, option: option9
matiere221 = Matiere.create nom: 'Cloud and Grid Computing', bloc: bloc62, option: option9
matiere222 = Matiere.create nom: 'ERP : progiciel de gestion intégré', bloc: bloc62, option: option9

matiere223 = Matiere.create nom: 'Gestion de projets télécoms', bloc: bloc62, option: option10
matiere224 = Matiere.create nom: 'Entreprise étendue', bloc: bloc62, option: option10
matiere225 = Matiere.create nom: 'Architectures télécoms avancées', bloc: bloc62, option: option10
matiere226 = Matiere.create nom: 'Législation pour les télécoms', bloc: bloc62, option: option10
matiere227 = Matiere.create nom: 'Infrastructures opérationnelles', bloc: bloc62, option: option10

matiere228 = Matiere.create nom: 'Imagerie biomédicale', bloc: bloc62, option: option13
matiere229 = Matiere.create nom: 'Imagerie satellitaire', bloc: bloc62, option: option13
matiere230 = Matiere.create nom: "Modèle markoviens et applications à l'imagerie", bloc: bloc62, option: option13
matiere231 = Matiere.create nom: 'Déconvolution', bloc: bloc62, option: option13
matiere232 = Matiere.create nom: "Canal d'impression lecture", bloc: bloc62, option: option13
matiere233 = Matiere.create nom: "Tatouage d'image", bloc: bloc62, option: option13
matiere234 = Matiere.create nom: "Chiffrement et hachage robuste d'image authentification", bloc: bloc62, option: option13

matiere235 = Matiere.create nom: 'Java Académie', bloc: bloc62, option: option14

matiere236 = Matiere.create nom: 'Master Entreprenariat', bloc: bloc62, option: option15

matiere237 = Matiere.create nom: 'Master IEGI', bloc: bloc62, option: option16

matiere238 = Matiere.create nom: "Stage de fin d'étude", bloc: bloc91

matiere239 = Matiere.create nom: 'Ondes électromagnétiques', bloc: bloc63
matiere240 = Matiere.create nom: "Introduction à l'optique", bloc: bloc63
matiere241 = Matiere.create nom: 'Optique géométrique', bloc: bloc63
matiere242 = Matiere.create nom: 'Optique expérimentale', bloc: bloc63

matiere243 = Matiere.create nom: "Introduction à l'analyse d'image", bloc: bloc64
matiere244 = Matiere.create nom: 'Introduction aux systèmes de vision', bloc: bloc64
matiere245 = Matiere.create nom: 'Travaux pratiques image et vision', bloc: bloc64

matiere246 = Matiere.create nom: 'Mathématiques', bloc: bloc65
matiere247 = Matiere.create nom: 'Signaux', bloc: bloc65
matiere248 = Matiere.create nom: 'Algorithmique', bloc: bloc65
matiere249 = Matiere.create nom: 'Langage C', bloc: bloc65

matiere250 = Matiere.create nom: 'Instrumentation électronique et mesure', bloc: bloc66
matiere251 = Matiere.create nom: 'Architecture des ordinateurs', bloc: bloc66
matiere252 = Matiere.create nom: 'Métrologie', bloc: bloc66

matiere253 = Matiere.create nom: 'Organisation des entreprises', bloc: bloc67
matiere254 = Matiere.create nom: 'Comptabilité', bloc: bloc67
matiere255 = Matiere.create nom: 'Droit', bloc: bloc67
matiere256 = Matiere.create nom: "Vie de l'apprentissage", bloc: bloc67
matiere257 = Matiere.create nom: 'Anglais', bloc: bloc67

matiere258 = Matiere.create nom: 'Photométrique', bloc: bloc68
matiere259 = Matiere.create nom: 'Optique ondulatoire', bloc: bloc68
matiere260 = Matiere.create nom: 'Optique expérimentale', bloc: bloc68

matiere261 = Matiere.create nom: "Analyse d'image", bloc: bloc69
matiere262 = Matiere.create nom: 'Structures de données', bloc: bloc69

matiere263 = Matiere.create nom: 'Probabilités et statistiques', bloc: bloc70
matiere264 = Matiere.create nom: 'Traitement numérique des données', bloc: bloc70
matiere265 = Matiere.create nom: 'Projet informatique C', bloc: bloc70

matiere266 = Matiere.create nom: 'Automatique', bloc: bloc71
matiere267 = Matiere.create nom: 'Automatismes', bloc: bloc71
matiere268 = Matiere.create nom: 'Réseaux', bloc: bloc71

matiere269 = Matiere.create nom: 'Anglais', bloc: bloc72
matiere270 = Matiere.create nom: 'Communication', bloc: bloc72
matiere271 = Matiere.create nom: 'Vie en apprentissage', bloc: bloc72

matiere272 = Matiere.create nom: 'Sources de lumière', bloc: bloc73
matiere273 = Matiere.create nom: 'Optique guidée', bloc: bloc73
matiere274 = Matiere.create nom: 'Théorie des lasers', bloc: bloc73
matiere275 = Matiere.create nom: 'Optique expérimentale', bloc: bloc73

matiere276 = Matiere.create nom: 'Acquisition des images', bloc: bloc74
matiere277 = Matiere.create nom: 'Vision humaine et vision artificielle', bloc: bloc74
matiere278 = Matiere.create nom: 'Travaux pratiques Image', bloc: bloc74

matiere279 = Matiere.create nom: 'Systèmes informatiques', bloc: bloc75
matiere280 = Matiere.create nom: 'Programmation orientée objet', bloc: bloc75
matiere281 = Matiere.create nom: 'Traitement du signal', bloc: bloc75
matiere282 = Matiere.create nom: 'Tests statistiques', bloc: bloc75

matiere283 = Matiere.create nom: 'Chaîne de transmission électronique', bloc: bloc76
matiere284 = Matiere.create nom: 'Compléments en automatique', bloc: bloc76
matiere285 = Matiere.create nom: 'Compléments en télécoms', bloc: bloc76
matiere286 = Matiere.create nom: 'Compléments en réseaux', bloc: bloc76

matiere287 = Matiere.create nom: 'Anglais', bloc: bloc77
matiere288 = Matiere.create nom: 'Gestion de projet', bloc: bloc77
matiere289 = Matiere.create nom: "Projet d'étude Optique/Image/Vision", bloc: bloc77

matiere290 = Matiere.create nom: "Matériaux pour l'optique", bloc: bloc78
matiere291 = Matiere.create nom: 'Mise en oeuvre des lasers', bloc: bloc78
matiere292 = Matiere.create nom: 'Conception assistée par ordinateur', bloc: bloc78
matiere293 = Matiere.create nom: 'Interaction Lumière/Matière', bloc: bloc78
matiere294 = Matiere.create nom: 'Optique expérimentale', bloc: bloc78

matiere295 = Matiere.create nom: 'Traitement et analyse', bloc: bloc79
matiere296 = Matiere.create nom: 'Outils de comparaison des images', bloc: bloc79
matiere297 = Matiere.create nom: 'Programmation interface graphique', bloc: bloc79
matiere298 = Matiere.create nom: 'Programmation évènementielle', bloc: bloc79

matiere299 = Matiere.create nom: 'Projet informatique C++', bloc: bloc80
matiere300 = Matiere.create nom: 'Statistiques industrielles', bloc: bloc80
matiere301 = Matiere.create nom: 'Electronique de puissance', bloc: bloc80
matiere302 = Matiere.create nom: 'Capteurs', bloc: bloc80

matiere303 = Matiere.create nom: 'Anglais', bloc: bloc81
matiere304 = Matiere.create nom: 'Gestion de projet', bloc: bloc81
matiere305 = Matiere.create nom: 'Conduite de réunions', bloc: bloc81
matiere306 = Matiere.create nom: 'Gestion de conflits', bloc: bloc81
matiere307 = Matiere.create nom: 'Vie en apprentissage', bloc: bloc81
matiere308 = Matiere.create nom: 'Projet d''étude Optique/Image/Vision', bloc: bloc81

matiere309 = Matiere.create nom: 'Usinage laser', bloc: bloc82
matiere310 = Matiere.create nom: 'Instrumentation optique', bloc: bloc82
matiere311 = Matiere.create nom: 'Optique expérimentale', bloc: bloc82

matiere312 = Matiere.create nom: 'Compression et qualité des images', bloc: bloc83
matiere313 = Matiere.create nom: "Mesure de mouvement par l'imagerie", bloc: bloc83
matiere314 = Matiere.create nom: "Protocole de communication pour l'image", bloc: bloc83
matiere315 = Matiere.create nom: 'Projet Vision', bloc: bloc83

matiere316 = Matiere.create nom: 'Gestion de production', bloc: bloc85
matiere317 = Matiere.create nom: 'Base de données', bloc: bloc85

matiere318 = Matiere.create nom: 'Communication', bloc: bloc86
matiere319 = Matiere.create nom: "Projet d'étude Optique/Image/Vision", bloc: bloc86

matiere320 = Matiere.create nom: 'Module optionnel', bloc: bloc84

matiere321 = Matiere.create nom: 'Projet Optique', bloc: bloc87

matiere322 = Matiere.create nom: "Traitement d'image couleur", bloc: bloc88
matiere323 = Matiere.create nom: 'Imagerie 3D', bloc: bloc88
matiere324 = Matiere.create nom: 'Texture', bloc: bloc88
matiere325 = Matiere.create nom: 'Colorimétrie', bloc: bloc88

matiere326 = Matiere.create nom: 'Qualité', bloc: bloc89
matiere327 = Matiere.create nom: 'Robotique', bloc: bloc89

matiere328 = Matiere.create nom: 'Anglais', bloc: bloc90
matiere329 = Matiere.create nom: 'Ressources humaines', bloc: bloc90
matiere330 = Matiere.create nom: 'Gestion de conflits', bloc: bloc90
matiere331 = Matiere.create nom: "Economie de l'innovation", bloc: bloc90
matiere332 = Matiere.create nom: "Projet d'étude Optique/Image/Vision", bloc: bloc90

matiere333 = Matiere.create nom: 'Java', bloc: bloc84, option: option17

matiere334 = Matiere.create nom: "Perception de l'espace", bloc: bloc84, option: option18

matiere335 = Matiere.create nom: 'Composants à semi-conducteurs', bloc: bloc84, option: option19

matiere336 = Matiere.create nom: 'Caractérisations et Mesures', bloc: bloc84, option: option20

matiere337 = Matiere.create nom: 'Physique des semi-conducteurs', bloc: bloc84, option: option21

matiere338 = Matiere.create nom: 'Métaheuristiques', bloc: bloc84, option: option22

matiere339 = Matiere.create nom: 'Introduction aux réseaux de neurones', bloc: bloc84, option: option23

matiere340 = Matiere.create nom: 'Antennes et liaisons hertziennes', bloc: bloc84, option: option24
