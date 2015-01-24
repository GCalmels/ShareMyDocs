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

# Creation des semestres

s1 = Semestre.create nom: 'S1', filiere: citise1
s2 = Semestre.create nom: 'S2', filiere: citise1
s3 = Semestre.create nom: 'S3', filiere: citise2
s4 = Semestre.create nom: 'S4', filiere: citise2

s5_fi = Semestre.create nom: 'S5', filiere: fi1
s6_fi = Semestre.create nom: 'S6', filiere: fi1
s7_fi = Semestre.create nom: 'S7', filiere: fi2
s8_fi = Semestre.create nom: 'S8', filiere: fi2
s9_fi = Semestre.create nom: 'S9', filiere: fi3
s10_fi = Semestre.create nom: 'S10', filiere: fi3

s5_fa = Semestre.create nom: 'S5', filiere: fa1
s6_fa = Semestre.create nom: 'S6', filiere: fa1
s7_fa = Semestre.create nom: 'S7', filiere: fa2
s8_fa = Semestre.create nom: 'S8', filiere: fa2
s9_fa = Semestre.create nom: 'S9', filiere: fa3
s10_fa = Semestre.create nom: 'S10', filiere: fa3

# Creation des blocs

citise_a1 = Bloc.create nom: 'Bases théoriques', semestre: s1
citise_a2 = Bloc.create nom: 'Génie électrique et informatique', semestre: s1
citise_a3 = Bloc.create nom: 'Communication', semestre: s1
citise_a4 = Bloc.create nom: 'Projets', semestre: s1

citise_b1 = Bloc.create nom: 'Bases théoriques', semestre: s2
citise_b2 = Bloc.create nom: 'Génie électrique et informatique', semestre: s2
citise_b3 = Bloc.create nom: 'Communication', semestre: s2
citise_b4 = Bloc.create nom: 'Projets', semestre: s2

citise_c1 = Bloc.create nom: 'Bases théoriques', semestre: s3
citise_c2 = Bloc.create nom: 'Génie électrique et informatique', semestre: s3
citise_c3 = Bloc.create nom: 'Communication', semestre: s3
citise_c4 = Bloc.create nom: 'Projets', semestre: s3

citise_d1 = Bloc.create nom: 'Bases théoriques', semestre: s4
citise_d2 = Bloc.create nom: 'Génie électrique et informatique', semestre: s4
citise_d3 = Bloc.create nom: 'Communication', semestre: s4
citise_d4 = Bloc.create nom: 'Projets', semestre: s4
citise_d5 = Bloc.create nom: 'STAGE', semestre: s4

fi_abcd = Bloc.create nom: 'Base des connaissances différenciées', semestre: s5_fi
fi_math_phy_1 = Bloc.create nom: 'Mathématiques et Physique', semestre: s5_fi
fi_elec_info_1 = Bloc.create nom: 'Electronique et Informatique', semestre: s5_fi
fi_l1 = Bloc.create nom: 'Langue Vivante', semestre: s5_fi
fi_shs1 = Bloc.create nom: 'Ingénieur, entreprise et société', semestre: s5_fi

fi_math_elec_2 = Bloc.create nom: 'Signaux et Systèmes Numériques', semestre: s6_fi
fi_info2 = Bloc.create nom: 'Programmation object et système Unix', semestre: s6_fi
fi_tse2 = Bloc.create nom: 'Fondamentaux TSE : Spécialités', semestre: s6_fi
fi_l2 = Bloc.create nom: 'Langue Vivante', semestre: s6_fi
fi_shs2 = Bloc.create nom: 'Ingénieur, entreprise et société', semestre: s6_fi
fi_appl1 = Bloc.create nom: 'Stage opérationnel', semestre: s6_fi

fi_info3 = Bloc.create nom: 'Gestion de données et projet informatique', semestre: s7_fi
fi_math3 = Bloc.create nom: 'Optimisation et traitement du signal avancé', semestre: s7_fi
fi_l3 = Bloc.create nom: 'Langue vivante', semestre: s7_fi
fi_elec3 = Bloc.create nom: 'Systèmes embarqués', semestre: s7_fi
fi_vision1 = Bloc.create nom: 'Ingénierie de la vision', semestre: s7_fi
fi_info4 = Bloc.create nom: "Développement d'applications informatiques", semestre: s7_fi
fi_image2 = Bloc.create nom: "Analyse d'images", semestre: s7_fi
fi_optique2 = Bloc.create nom: 'Systèmes optiques', semestre: s7_fi
fi_telecom2 = Bloc.create nom: 'Codage et transmission', semestre: s7_fi

fi_shs3 = Bloc.create nom: 'Ingénieur, entreprise et société', semestre: s8_fi
fi_l4 = Bloc.create nom: 'Langue vivante', semestre: s8_fi
fi_appl3 = Bloc.create nom: "Projet d'ingénierie", semestre: s8_fi
fi_elec4 = Bloc.create nom: 'Composants, signaux, systèmes', semestre: s8_fi
fi_image3 = Bloc.create nom: "De l'image à l'information", semestre: s8_fi
fi_reseaux2 = Bloc.create nom: 'Réseaux : Commutation et Routage', semestre: s8_fi
fi_optique3 = Bloc.create nom: 'Laser et applications photoniques', semestre: s8_fi
fi_info5 = Bloc.create nom: 'Développement multimédia', semestre: s8_fi
fi_telecom3 = Bloc.create nom: 'Protocoles et services télécoms', semestre: s8_fi
fi_opt_opt1 = Bloc.create nom: 'Les semaines de la photonique', semestre: s8_fi
fi_opt_elec1 = Bloc.create nom: 'Robotique', semestre: s8_fi
fi_opt_rx1 = Bloc.create nom: 'Configuration et administration de réseaux', semestre: s8_fi
fi_opt_tel1 = Bloc.create nom: 'Box : architecture matérielle et logicielle', semestre: s8_fi
fi_opt_info1 = Bloc.create nom: "Du stockage à l'information", semestre: s8_fi
fi_opt_info2 = Bloc.create nom: 'Programmation haute performance', semestre: s8_fi
fi_opt_math1 = Bloc.create nom: 'Optimisation et Intelligence Artificielle', semestre: s8_fi
fi_opt_image1 = Bloc.create nom: "Programmation sur GPU et FPGA pour l'imagerie en temps réel", semestre: s8_fi
fi_opt_math2 = Bloc.create nom: 'Probabilités approfondies', semestre: s8_fi
fi_opt_shs1 = Bloc.create nom: 'Management des idées, des innovations et des projets IT', semestre: s8_fi

fi_shs4 = Bloc.create nom: 'Ingénieur, entreprise et société', semestre: s9_fi
fi_optique4 = Bloc.create nom: 'Optoélectronique', semestre: s9_fi
fi_reseaux3 = Bloc.create nom: "Services réseaux d'entreprise", semestre: s9_fi
fi_image4 = Bloc.create nom: 'Contenus numériques multimédia', semestre: s9_fi
fi_elec5 = Bloc.create nom: 'Conception de systèmes numériques', semestre: s9_fi
fi_info6 = Bloc.create nom: 'Informatique distribuée', semestre: s9_fi
fi_elec6 = Bloc.create nom: 'Systèmes embarqués Nomades', semestre: s9_fi
fi_vision2 = Bloc.create nom: "Systèmes spécifiques d'imagerie", semestre: s9_fi
fi_telecom4 = Bloc.create nom: 'Objets communicants', semestre: s9_fi
fi_reseaux4 = Bloc.create nom: 'Réseaux multi-services', semestre: s9_fi
fi_spe_opt1 = Bloc.create nom: 'Photonique Avancée', semestre: s9_fi
fi_spe_elec1 = Bloc.create nom: 'Conception de circuits intégrés', semestre: s9_fi
fi_spe_info2 = Bloc.create nom: "Systèmes d'informations : Architecture et sécurité", semestre: s9_fi
fi_spe_tel1 = Bloc.create nom: 'Infrastructures et services opérateurs', semestre: s9_fi
fi_spe_image1 = Bloc.create nom: 'Imagerie avancée', semestre: s9_fi
fi_spe_info1 = Bloc.create nom: 'Java Académie', semestre: s9_fi
fi_spe_entrepr = Bloc.create nom: 'Entrepreneuriat', semestre: s9_fi
fi_spe_iegi = Bloc.create nom: "Intelligence économique gestion de l'innovation", semestre: s9_fi

fi_pfe = Bloc.create nom: 'Stage', semestre: s10_fi

fa_speO1 = Bloc.create nom: 'Spécialité Optique', semestre: s5_fa
fa_speVI1 = Bloc.create nom: 'Spécialité Image Vision', semestre: s5_fa
fa_f1 = Bloc.create nom: "Fondamentaux pour l'ingénieur", semestre: s5_fa
fa_spi1 = Bloc.create nom: "Sciences pour l'ingénieur", semestre: s5_fa
fa_inge1 = Bloc.create nom: "Métiers de l'ingénieur", semestre: s5_fa
fa_app1 = Bloc.create nom: 'Apprentissage', semestre: s5_fa

fa_speO2 = Bloc.create nom: 'Spécialité Optique', semestre: s6_fa
fa_speVI2 = Bloc.create nom: 'Spécialité Image Vision', semestre: s6_fa
fa_f2 = Bloc.create nom: "Fondamentaux pour l'ingénieur", semestre: s6_fa
fa_spi2 = Bloc.create nom: "Sciences pour l'ingénieur", semestre: s6_fa
fa_inge2 = Bloc.create nom: "Métiers de l'ingénieur", semestre: s6_fa
fa_app2 = Bloc.create nom: 'Apprentissage', semestre: s6_fa

fa_speO3 = Bloc.create nom: 'Spécialité Optique', semestre: s7_fa
fa_speVI3 = Bloc.create nom: 'Spécialité Image Vision', semestre: s7_fa
fa_f3 = Bloc.create nom: "Fondamentaux pour l'ingénieur", semestre: s7_fa
fa_spi3 = Bloc.create nom: "Sciences pour l'ingénieur", semestre: s7_fa
fa_inge3 = Bloc.create nom: "Métiers de l'ingénieur", semestre: s7_fa
fa_app3 = Bloc.create nom: 'Apprentissage', semestre: s7_fa

fa_speO4 = Bloc.create nom: 'Spécialité Optique', semestre: s8_fa
fa_speVI4 = Bloc.create nom: 'Spécialité Image Vision', semestre: s8_fa
fa_spi4 = Bloc.create nom: "Sciences pour l'ingénieur", semestre: s8_fa
fa_inge4 = Bloc.create nom: "Métiers de l'ingénieur", semestre: s8_fa
fa_app4 = Bloc.create nom: 'Apprentissage', semestre: s8_fa

fa_speO5 = Bloc.create nom: 'Spécialité Optique', semestre: s9_fa
fa_speVI5 = Bloc.create nom: 'Spécialité Image Vision', semestre: s9_fa
fa_option = Bloc.create nom: 'Option au choix', semestre: s9_fa
fa_spi5 = Bloc.create nom: "Sciences pour l'ingénieur", semestre: s9_fa
fa_inge5 = Bloc.create nom: "Métiers de l'ingénieur", semestre: s9_fa
fa_app5 = Bloc.create nom: 'Apprentissage', semestre: s9_fa

fa_speO6 = Bloc.create nom: 'Spécialité Optique', semestre: s10_fa
fa_speVI6 = Bloc.create nom: 'Spécialité Image Vision', semestre: s10_fa
fa_spi6 = Bloc.create nom: "Sciences pour l'ingénieur", semestre: s10_fa
fa_inge6 = Bloc.create nom: "Métiers de l'ingénieur", semestre: s10_fa
fa_app6 = Bloc.create nom: 'Apprentissage', semestre: s10_fa

# Creation des matieres

Matiere.create nom: "Mathématiques pour l'ingénieur", bloc: citise_a1
Matiere.create nom: 'Mécanique du point', bloc: citise_a1
Matiere.create nom: 'Optique géométrique', bloc: citise_a1

Matiere.create nom: 'Systèmes électroniques', bloc: citise_a2
Matiere.create nom: 'Energie', bloc: citise_a2
Matiere.create nom: 'Informatique industrielle', bloc: citise_a2
Matiere.create nom: "Système d'information numérique", bloc: citise_a2

Matiere.create nom: 'Anglais', bloc: citise_a3
Matiere.create nom: 'Langue vivante 2', bloc: citise_a3
Matiere.create nom: 'Communication', bloc: citise_a3
Matiere.create nom: 'Apprendre à travailler et à communiquer', bloc: citise_a3

Matiere.create nom: 'Projet scientifique bibliographique', bloc: citise_a4
Matiere.create nom: 'Etude et réalisation pluritechnologiques', bloc: citise_a4

Matiere.create nom: "Mathématiques pour l'ingénieur", bloc: citise_b1
Matiere.create nom: 'Electrostatique', bloc: citise_b1
Matiere.create nom: 'Magnétostatique', bloc: citise_b1

Matiere.create nom: 'Systèmes électroniques', bloc: citise_b2
Matiere.create nom: 'Energie', bloc: citise_b2
Matiere.create nom: 'Informatique embarquée', bloc: citise_b2
Matiere.create nom: 'Automatismes', bloc: citise_b2

Matiere.create nom: 'Anglais', bloc: citise_b3
Matiere.create nom: 'Langue vivante 2', bloc: citise_b3
Matiere.create nom: 'Communication', bloc: citise_b3

Matiere.create nom: 'Projet de physique', bloc: citise_b4
Matiere.create nom: 'Etude et réalisation pluritechnologiques', bloc: citise_b4

Matiere.create nom: "Mathématiques pour l'ingénieur", bloc: citise_c1
Matiere.create nom: 'Induction électromagnétique', bloc: citise_c1
Matiere.create nom: 'Principe de la thermodynamique', bloc: citise_c1
Matiere.create nom: 'Interfaces et diffraction optiques', bloc: citise_c1

Matiere.create nom: 'Systèmes électroniques', bloc: citise_c2
Matiere.create nom: 'Energie', bloc: citise_c2
Matiere.create nom: 'Automatique', bloc: citise_c2
Matiere.create nom: 'Programmation orientée objet', bloc: citise_c2
Matiere.create nom: 'Réseaux', bloc: citise_c2
Matiere.create nom: 'Programmation embarquée', bloc: citise_c2
Matiere.create nom: 'Capteurs & Vision', bloc: citise_c2

Matiere.create nom: 'Anglais', bloc: citise_c3
Matiere.create nom: 'Langue vivante 2', bloc: citise_c3
Matiere.create nom: 'Entreprise et Communication', bloc: citise_c3

Matiere.create nom: 'Projet TIPE', bloc: citise_c4
Matiere.create nom: 'Etude et réalisation pluritechnologiques', bloc: citise_c4

Matiere.create nom: "Mathématiques pour l'ingénieur", bloc: citise_d1
Matiere.create nom: 'Ondes et propagation', bloc: citise_d1
Matiere.create nom: 'Probabilités & Statistiques', bloc: citise_d1

Matiere.create nom: 'Traitement numérique des images', bloc: citise_d2
Matiere.create nom: 'Electronique pour les modulations numériques', bloc: citise_d2
Matiere.create nom: 'Base de données et interfaçage', bloc: citise_d2
Matiere.create nom: 'Réseaux et transmission', bloc: citise_d2

Matiere.create nom: 'Anglais', bloc: citise_d3
Matiere.create nom: 'Connaissance des entreprises', bloc: citise_d3

Matiere.create nom: 'Projet TIPE', bloc: citise_d4
Matiere.create nom: 'Etude et réalisation pluritechnologiques', bloc: citise_d4

Matiere.create nom: 'STAGE', bloc: citise_d5

Matiere.create nom: 'Base indispensable des mathématiques', bloc: fi_abcd
Matiere.create nom: 'Electrostatique, Magnétostatique', bloc: fi_abcd
Matiere.create nom: "Base de l'algorithmique et de la programmation", bloc: fi_abcd
Matiere.create nom: 'Electronique et mesure', bloc: fi_abcd

Matiere.create nom: 'Mathématiques des signaux et des systèmes', bloc: fi_math_phy_1
Matiere.create nom: 'Probabilités', bloc: fi_math_phy_1
Matiere.create nom: 'Calcul numérique', bloc: fi_math_phy_1
Matiere.create nom: 'Statistiques', bloc: fi_math_phy_1
Matiere.create nom: 'Electromagnétisme', bloc: fi_math_phy_1

Matiere.create nom: 'Systèmes de traitement électronique', bloc: fi_elec_info_1
Matiere.create nom: 'Algorithmique et structures de données', bloc: fi_elec_info_1
Matiere.create nom: "Architecture des ordinateurs et systèmes d'exploitation", bloc: fi_elec_info_1

Matiere.create nom: 'Anglais', bloc: fi_l1
Matiere.create nom: 'Langue vivante 2', bloc: fi_l1

Matiere.create nom: 'Macro économie', bloc: fi_shs1
Matiere.create nom: 'Droit des institutions nationales et internationales', bloc: fi_shs1
Matiere.create nom: 'Droit des affaires', bloc: fi_shs1
Matiere.create nom: "Techniques de recherche d'emploi", bloc: fi_shs1
Matiere.create nom: 'Techniques de communication', bloc: fi_shs1

Matiere.create nom: 'Electronique numérique', bloc: fi_math_elec_2
Matiere.create nom: "Projets d'application électronique", bloc: fi_math_elec_2
Matiere.create nom: 'Signaux et systèmes discrets', bloc: fi_math_elec_2
Matiere.create nom: 'Signaux aléatoires', bloc: fi_math_elec_2

Matiere.create nom: 'Programmation orientée objet', bloc: fi_info2
Matiere.create nom: 'OS Unix', bloc: fi_info2
Matiere.create nom: 'Mini-Projet', bloc: fi_info2

Matiere.create nom: "Introduction à l'Image", bloc: fi_tse2
Matiere.create nom: "Introduction à l'Optique Photonique", bloc: fi_tse2
Matiere.create nom: 'Introduction aux réseaux', bloc: fi_tse2
Matiere.create nom: 'Introduction aux télécommunications', bloc: fi_tse2

Matiere.create nom: 'Anglais', bloc: fi_l2
Matiere.create nom: 'Langue vivante 2', bloc: fi_l2

Matiere.create nom: "Gestion et finance d'entreprise", bloc: fi_shs2
Matiere.create nom: 'Gestion de projet', bloc: fi_shs2
Matiere.create nom: 'Micro économie', bloc: fi_shs2
Matiere.create nom: "Ethique de l'ingénieur", bloc: fi_shs2

Matiere.create nom: 'Stage opérationnel', bloc: fi_appl1

Matiere.create nom: 'Introduction au Web', bloc: fi_info3
Matiere.create nom: 'Base de données', bloc: fi_info3
Matiere.create nom: 'Projet informatique de parcours', bloc: fi_info3

Matiere.create nom: 'Traitement du signal avancé', bloc: fi_math3
Matiere.create nom: 'Recherche opérationnelle', bloc: fi_math3
Matiere.create nom: 'Optimisation continue', bloc: fi_math3

Matiere.create nom: 'Anglais', bloc: fi_l3
Matiere.create nom: 'Langue vivante 2', bloc: fi_l3

Matiere.create nom: 'Systèmes embarqués à microprocesseurs', bloc: fi_elec3
Matiere.create nom: 'Circuits Logiques Programmables', bloc: fi_elec3
Matiere.create nom: 'Systèmes embarqués communicants', bloc: fi_elec3

Matiere.create nom: 'Perception visuelle', bloc: fi_vision1
Matiere.create nom: 'Capteurs et automatismes', bloc: fi_vision1
Matiere.create nom: 'Eclairages et acquisition des images', bloc: fi_vision1
Matiere.create nom: 'Asservissements des systèmes', bloc: fi_vision1

Matiere.create nom: 'Génie logiciel', bloc: fi_info4
Matiere.create nom: 'JAVA', bloc: fi_info4
Matiere.create nom: 'Langage de script', bloc: fi_info4
Matiere.create nom: 'Outils de développement rapide', bloc: fi_info4

Matiere.create nom: 'Images numériques', bloc: fi_image2
Matiere.create nom: "Traitement d'images", bloc: fi_image2
Matiere.create nom: 'Image et signal', bloc: fi_image2
Matiere.create nom: 'Morphologie mathématique', bloc: fi_image2

Matiere.create nom: 'Optique ondulatoire et optique de Fourier', bloc: fi_optique2
Matiere.create nom: 'Lumière polarisée', bloc: fi_optique2
Matiere.create nom: 'Caractérisation et mesures', bloc: fi_optique2
Matiere.create nom: 'Fibres optiques', bloc: fi_optique2
Matiere.create nom: 'Optique expérimentale', bloc: fi_optique2

Matiere.create nom: 'Modulations et codages', bloc: fi_telecom2
Matiere.create nom: 'Antennes', bloc: fi_telecom2
Matiere.create nom: 'Fibres optiques', bloc: fi_telecom2
Matiere.create nom: 'Supports de transmission cuivre', bloc: fi_telecom2
Matiere.create nom: 'Travaux pratiques', bloc: fi_telecom2

Matiere.create nom: 'Analyse financière', bloc: fi_shs3
Matiere.create nom: "Economie et management de l'innovation", bloc: fi_shs3
Matiere.create nom: 'Marketing', bloc: fi_shs3
Matiere.create nom: "Plan d'affaires", bloc: fi_shs3
Matiere.create nom: "Ethique de l'ingénieur", bloc: fi_shs3
Matiere.create nom: 'Qualité', bloc: fi_shs3

Matiere.create nom: 'Anglais', bloc: fi_l4
Matiere.create nom: 'Langue vivante 2', bloc: fi_l4

Matiere.create nom: "Projet d'ingénierie", bloc: fi_appl3

Matiere.create nom: 'Automatique', bloc: fi_elec4
Matiere.create nom: "Composants de l'électronique BF&RF", bloc: fi_elec4
Matiere.create nom: "Systèmes d'acquisition et de transformation du signal", bloc: fi_elec4

Matiere.create nom: 'Couleur', bloc: fi_image3
Matiere.create nom: 'Analyse de texture', bloc: fi_image3
Matiere.create nom: 'Reconnaissance de formes', bloc: fi_image3
Matiere.create nom: 'Transformées', bloc: fi_image3
Matiere.create nom: 'Reconstruction 3D', bloc: fi_image3
Matiere.create nom: 'Traitement 3D', bloc: fi_image3

Matiere.create nom: 'Commutation & Routage', bloc: fi_reseaux2

Matiere.create nom: 'Sources lasers', bloc: fi_optique3
Matiere.create nom: 'Procédé LASER', bloc: fi_optique3
Matiere.create nom: 'Optique non linéaire', bloc: fi_optique3

Matiere.create nom: 'Interfaces graphiques', bloc: fi_info5
Matiere.create nom: 'Bibliothèques de développement multimédia', bloc: fi_info5

Matiere.create nom: 'Architectures Télécoms', bloc: fi_telecom3
Matiere.create nom: 'Télécommunications filaires', bloc: fi_telecom3
Matiere.create nom: 'Télécommunications sans fil', bloc: fi_telecom3

Matiere.create nom: 'CAO Optique (ENSPS)', bloc: fi_opt_opt1
Matiere.create nom: 'Photonique aux temps courts et ulti-courts (TSE)', bloc: fi_opt_opt1
Matiere.create nom: 'Projet Photonique', bloc: fi_opt_opt1

Matiere.create nom: 'Robotique', bloc: fi_opt_elec1
Matiere.create nom: 'Robots connectés', bloc: fi_opt_elec1

Matiere.create nom: 'Administration de réseaux', bloc: fi_opt_rx1
Matiere.create nom: 'Serveurs et protocols', bloc: fi_opt_rx1

Matiere.create nom: 'Circuits spécifiques pour les télécoms', bloc: fi_opt_tel1
Matiere.create nom: 'DSP', bloc: fi_opt_tel1
Matiere.create nom: "Systèmes d'exploitations embarqués", bloc: fi_opt_tel1

Matiere.create nom: 'Compression de données', bloc: fi_opt_info1
Matiere.create nom: "Protection de l'information", bloc: fi_opt_info1
Matiere.create nom: "Codage d'erreur et transmission", bloc: fi_opt_info1

Matiere.create nom: 'Programmation haute performance', bloc: fi_opt_info2
Matiere.create nom: 'Projet high performance computing', bloc: fi_opt_info2

Matiere.create nom: 'Programmation par contraintes', bloc: fi_opt_math1
Matiere.create nom: 'Métaheuristiques', bloc: fi_opt_math1
Matiere.create nom: 'Introduction aux réseaux de neurones', bloc: fi_opt_math1

Matiere.create nom: "Circuits logiques programmables pour l'image", bloc: fi_opt_image1
Matiere.create nom: "GPU pour le traitement d'images", bloc: fi_opt_image1
Matiere.create nom: 'Projet Opt-Image1', bloc: fi_opt_image1

Matiere.create nom: 'Probabilités approfondies', bloc: fi_opt_math2

Matiere.create nom: "Management de la complexité et de l'innovation IT", bloc: fi_opt_shs1
Matiere.create nom: 'Pilotage des idées', bloc: fi_opt_shs1
Matiere.create nom: 'Valorisation et ingénierie des projets', bloc: fi_opt_shs1
Matiere.create nom: "Jeu d'entreprise", bloc: fi_opt_shs1

Matiere.create nom: 'Décision individuelle et collective', bloc: fi_shs4
Matiere.create nom: 'Droit social', bloc: fi_shs4
Matiere.create nom: "Simulation d'entretien d'embauche", bloc: fi_shs4
Matiere.create nom: "Ethique de l'ingénieur", bloc: fi_shs4
Matiere.create nom: 'Théorie des organisations', bloc: fi_shs4
Matiere.create nom: 'Stratégie', bloc: fi_shs4
Matiere.create nom: 'Projet Recherche et Innovation', bloc: fi_shs4
Matiere.create nom: 'Anglais', bloc: fi_shs4

Matiere.create nom: 'Physique des semi-conducteurs', bloc: fi_optique4
Matiere.create nom: 'Composants à semi-conducteurs', bloc: fi_optique4
Matiere.create nom: "Circuits pour l'optoélectronique", bloc: fi_optique4
Matiere.create nom: 'Photométrie', bloc: fi_optique4
Matiere.create nom: 'Capteurs optiques', bloc: fi_optique4
Matiere.create nom: 'Optoélectronique rapide', bloc: fi_optique4

Matiere.create nom: 'Infrastructures', bloc: fi_reseaux3
Matiere.create nom: 'Serveurs, services, supervision', bloc: fi_reseaux3
Matiere.create nom: "Réalisation d'un SI d'entreprise", bloc: fi_reseaux3

Matiere.create nom: "Compression d'images", bloc: fi_image4
Matiere.create nom: 'Vidéo', bloc: fi_image4
Matiere.create nom: "Perception de l'espace", bloc: fi_image4
Matiere.create nom: "Synthèse d'image", bloc: fi_image4
Matiere.create nom: "Gestion de contenu d'image", bloc: fi_image4
Matiere.create nom: '2D, 3D et vidéo dans le navigateur', bloc: fi_image4

Matiere.create nom: 'Architectures matérielles sécurisées', bloc: fi_elec5
Matiere.create nom: 'Co-design, adéquation, algorithme, architecture', bloc: fi_elec5
Matiere.create nom: 'Circuits logiques configurables : applications en télécoms', bloc: fi_elec5
Matiere.create nom: 'Conception de circuits logiques complexes', bloc: fi_elec5

Matiere.create nom: 'Architecture n-tiers', bloc: fi_info6
Matiere.create nom: "Servers d'application et middleware", bloc: fi_info6
Matiere.create nom: 'Services Web-XML', bloc: fi_info6
Matiere.create nom: 'IHM et applications mobiles', bloc: fi_info6

Matiere.create nom: "Systèmes d'exploitation, logiciels et périphériques embarqués", bloc: fi_elec6
Matiere.create nom: "Fonctions d'alimentation et intégrité du signal", bloc: fi_elec6

Matiere.create nom: 'Imagerie hyperspectrale', bloc: fi_vision2
Matiere.create nom: 'Imagerie thermique', bloc: fi_vision2
Matiere.create nom: 'Vision 3D', bloc: fi_vision2
Matiere.create nom: 'Projet Image & Vision', bloc: fi_vision2

Matiere.create nom: 'Systèmes électroniques communicants', bloc: fi_telecom4
Matiere.create nom: 'Smart objects', bloc: fi_telecom4

Matiere.create nom: 'Management de la qualité des services', bloc: fi_reseaux4
Matiere.create nom: 'Convergence des réseaux et des services', bloc: fi_reseaux4
Matiere.create nom: 'Projet Europ', bloc: fi_reseaux4

Matiere.create nom: 'Optique intégrée', bloc: fi_spe_opt1
Matiere.create nom: 'Modèles et méthodes numériques en NanoPhotonique', bloc: fi_spe_opt1
Matiere.create nom: 'Intéraction Laser-Matière', bloc: fi_spe_opt1
Matiere.create nom: 'Composant à fibres', bloc: fi_spe_opt1
Matiere.create nom: 'Réflectométrie & Ellipsométrie', bloc: fi_spe_opt1

Matiere.create nom: 'Composants électronique à semi-conducteurs', bloc: fi_spe_elec1
Matiere.create nom: 'Le bruit dans les circuits intégrés', bloc: fi_spe_elec1
Matiere.create nom: 'Les circuits RF', bloc: fi_spe_elec1
Matiere.create nom: 'CAO de circuits intégrés', bloc: fi_spe_elec1

Matiere.create nom: 'Sécurité du SI', bloc: fi_spe_info2
Matiere.create nom: 'Urbanisation des SI', bloc: fi_spe_info2
Matiere.create nom: 'Système multi-agent', bloc: fi_spe_info2
Matiere.create nom: 'Cloud and Grid Computing', bloc: fi_spe_info2
Matiere.create nom: 'Web Sémantique', bloc: fi_spe_info2

Matiere.create nom: 'Gestion de projets télécoms', bloc: fi_spe_tel1
Matiere.create nom: 'Entreprise étendue', bloc: fi_spe_tel1
Matiere.create nom: 'Architectures télécoms avancées', bloc: fi_spe_tel1
Matiere.create nom: 'Ecosystème du développement des télécoms', bloc: fi_spe_tel1
Matiere.create nom: 'Infrastructures opérationnelles', bloc: fi_spe_tel1

Matiere.create nom: 'Imagerie biomédicale', bloc: fi_spe_image1
Matiere.create nom: 'Imagerie satellitaire', bloc: fi_spe_image1
Matiere.create nom: "Modèles markoviens et applications à l'imagerie", bloc: fi_spe_image1
Matiere.create nom: 'Déconvolution', bloc: fi_spe_image1
Matiere.create nom: "Canal d'impression lecture", bloc: fi_spe_image1
Matiere.create nom: "Tatouage d'image", bloc: fi_spe_image1
Matiere.create nom: "Chiffrement et hachage robuste d'image authentification", bloc: fi_spe_image1

Matiere.create nom: "Java Académie", bloc: fi_spe_info1

Matiere.create nom: 'Réalisé en commun avec Master Entrepreneuriat', bloc: fi_spe_entrepr

Matiere.create nom: 'Réalisé en commun avec Master IEGI', bloc: fi_spe_iegi

Matiere.create nom: "Stage de Fin d'Etude", bloc: fi_pfe

Matiere.create nom: 'Ondes électromagnétiques', bloc: fa_speO1
Matiere.create nom: "Introduction à l'optique", bloc: fa_speO1
Matiere.create nom: 'Optique géométrique', bloc: fa_speO1
Matiere.create nom: 'Optique expérimentale 1', bloc: fa_speO1

Matiere.create nom: "Introduction à l'analyse d'image", bloc: fa_speVI1
Matiere.create nom: "Introduction aux systèmes de vision", bloc: fa_speVI1
Matiere.create nom: 'Travaux pratiques image et vision', bloc: fa_speVI1

Matiere.create nom: 'Mathématiques', bloc: fa_f1
Matiere.create nom: 'Signaux', bloc: fa_f1
Matiere.create nom: 'Algorithmique', bloc: fa_f1
Matiere.create nom: 'Langage C', bloc: fa_f1
Matiere.create nom: "Soutien à la diversité de l'apprentissage", bloc: fa_f1

Matiere.create nom: 'Instrumentation électronique et mesure', bloc: fa_spi1
Matiere.create nom: 'Architecture des ordinateurs', bloc: fa_spi1
Matiere.create nom: 'Métrologie', bloc: fa_spi1

Matiere.create nom: 'Organisation des entreprises', bloc: fa_inge1
Matiere.create nom: "Vie de l'apprentissage", bloc: fa_inge1
Matiere.create nom: 'Anglais', bloc: fa_inge1

Matiere.create nom: 'Apprentissage', bloc: fa_app1

Matiere.create nom: 'Photométrie', bloc: fa_speO2
Matiere.create nom: 'Optique ondulatoire', bloc: fa_speO2
Matiere.create nom: 'Optique expérimentale 2', bloc: fa_speO2

Matiere.create nom: "Analyse d'image", bloc: fa_speVI2
Matiere.create nom: "Structures de données pour l'image", bloc: fa_speVI2

Matiere.create nom: 'Probabilités et statistiques', bloc: fa_f2
Matiere.create nom: 'Traitement numérique des données', bloc: fa_f2
Matiere.create nom: "Soutient à la diversité de l'apprentissage", bloc: fa_f2
Matiere.create nom: 'Projet informatique C', bloc: fa_f2

Matiere.create nom: 'Automatique', bloc: fa_spi2
Matiere.create nom: 'Automatismes', bloc: fa_spi2
Matiere.create nom: 'Base de données', bloc: fa_spi2

Matiere.create nom: 'Communication orale et écrite', bloc: fa_inge2
Matiere.create nom: "Vie en l'apprentissage", bloc: fa_inge2
Matiere.create nom: 'Anglais', bloc: fa_inge2

Matiere.create nom: 'Apprentissage', bloc: fa_app2

Matiere.create nom: 'Sources de lumière', bloc: fa_speO3
Matiere.create nom: 'Optique guidée', bloc: fa_speO3
Matiere.create nom: 'Théorie des lasers', bloc: fa_speO3
Matiere.create nom: 'Optique expérimentale 3', bloc: fa_speO3

Matiere.create nom: "Acquisition des images", bloc: fa_speVI3
Matiere.create nom: "Vision humaine et vision artificielle", bloc: fa_speVI3
Matiere.create nom: "Travaux pratiques Image", bloc: fa_speVI3
Matiere.create nom: "IHM et applications image", bloc: fa_speVI3
Matiere.create nom: "Projet d'étude Optique/Image/Vision", bloc: fa_speVI3

Matiere.create nom: 'Systèmes informatiques', bloc: fa_f3
Matiere.create nom: 'Programmation orientée objet', bloc: fa_f3
Matiere.create nom: "Traitement du signal", bloc: fa_f3
Matiere.create nom: 'Tests statistiques', bloc: fa_f3

Matiere.create nom: "Chaine de transmission électronique pour l'OVI", bloc: fa_spi3
Matiere.create nom: "Transport de l'information", bloc: fa_spi3
Matiere.create nom: "Problématique réseaux pour l'OVI", bloc: fa_spi3

Matiere.create nom: 'Gestion de projet', bloc: fa_inge3
Matiere.create nom: 'Anglais', bloc: fa_inge3

Matiere.create nom: 'Apprentissage', bloc: fa_app3

Matiere.create nom: "Matériaux pour l'optique", bloc: fa_speO4
Matiere.create nom: 'Mise en oeuvre des lasers', bloc: fa_speO4
Matiere.create nom: 'Conception assistée par ordinateur', bloc: fa_speO4
Matiere.create nom: 'Intéraction Lumière/Matière', bloc: fa_speO4
Matiere.create nom: 'Optique expérimentale 4', bloc: fa_speO4

Matiere.create nom: "Traitement et analyse", bloc: fa_speVI4
Matiere.create nom: "Outil de comparaison des images", bloc: fa_speVI4
Matiere.create nom: "Programmation évènementielle", bloc: fa_speVI4
Matiere.create nom: "Projet d'étude Optique/Image/Vision", bloc: fa_speVI4

Matiere.create nom: "Projet Informatique C++", bloc: fa_spi4
Matiere.create nom: "Statistiques industrielles", bloc: fa_spi4
Matiere.create nom: "Electronique de puissance", bloc: fa_spi4
Matiere.create nom: "Capteurs", bloc: fa_spi4

Matiere.create nom: 'Gestion de projet', bloc: fa_inge4
Matiere.create nom: 'Anglais', bloc: fa_inge4
Matiere.create nom: 'Conduite de réunions', bloc: fa_inge4
Matiere.create nom: 'Gestion de conflits', bloc: fa_inge4
Matiere.create nom: 'Vie en apprentissage', bloc: fa_inge4

Matiere.create nom: 'Apprentissage', bloc: fa_app4

Matiere.create nom: "Usinage laser", bloc: fa_speO5
Matiere.create nom: 'Instrumentation optique', bloc: fa_speO5
Matiere.create nom: "Projet d'étude Optique/Image/Vision", bloc: fa_speO5
Matiere.create nom: 'Optique expérimentale 5', bloc: fa_speO5

Matiere.create nom: "Compression et qualité des images", bloc: fa_speVI5
Matiere.create nom: "Mesure du mouvement par l'imagerie", bloc: fa_speVI5
Matiere.create nom: "Protocole de communication pour l'image", bloc: fa_speVI5
Matiere.create nom: "Projet Vision", bloc: fa_speVI5

Matiere.create nom: "3 modules optionnels en autoformation au choix", bloc: fa_option

Matiere.create nom: "Gestion de production", bloc: fa_spi5
Matiere.create nom: "Qualité", bloc: fa_spi5

Matiere.create nom: 'Communication', bloc: fa_inge5
Matiere.create nom: "Gestion financière d'entreprise", bloc: fa_inge5
Matiere.create nom: 'Droit social', bloc: fa_inge5

Matiere.create nom: 'Apprentissage', bloc: fa_app5

Matiere.create nom: "Projet Optique", bloc: fa_speO6
Matiere.create nom: "Projet d'étude Optique/Image/Vision", bloc: fa_speO6

Matiere.create nom: "Traitement d'image couleur", bloc: fa_speVI6
Matiere.create nom: "Imagerie 3D", bloc: fa_speVI6
Matiere.create nom: "Texture", bloc: fa_speVI6
Matiere.create nom: "Colorimétrie", bloc: fa_speVI6

Matiere.create nom: "Méthodes agiles de développement", bloc: fa_spi6
Matiere.create nom: "Robotique", bloc: fa_spi6

Matiere.create nom: 'Anglais', bloc: fa_inge6
Matiere.create nom: "Ressources humaines", bloc: fa_inge6
Matiere.create nom: "Plan d'affaire", bloc: fa_inge6
Matiere.create nom: "Economie de l'innovation", bloc: fa_inge6

Matiere.create nom: 'Apprentissage', bloc: fa_app6