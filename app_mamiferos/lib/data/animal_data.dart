import 'package:flutter/material.dart';
import 'package:app_mamiferos/model/animal.dart';

final allAnimals = <Animal>[
  Animal(
      id : 1,
      nombre : 'Zorro Pelón - Zarigüeya',
      nombreCientifico : 'Didelphis marsupialis',
      imagen : 'assets/images/1_Didelphis marsupialis TDL Lisa Sanchez Aguilar - escaneo para Museo Nacional de Costa Rica 300dpi.webp',
      huella : 'assets/images/1_Huellas Escaneos11 Didelphis marsupialis - zorro pelon.webp',
      texto1 : 'Es del grupo de los llamados zorros en Costa Rica, aunque es una familia distinta del zorro europeo. Esta es la más conocida, aunque no habite a zonas muy altas por el momento.',
      texto2 : 'Huellas como si estuviera midiendo cuartas, dedos extendidos.',
      texto3 : 'Pata delantera 2.5-4 cm x 4.5-6 cm. Pata trasera 3-4 cm x 5-7 cm.'
  ),
  Animal(
      id : 2,
      nombre : 'Zorro cuatro ojos',
      nombreCientifico : 'Philander opossum',
      imagen : 'assets/images/2_Philander opossum TDL Lisa Sanchez Aguilar - escaneo para Museo Nacional de Costa Rica 300dpi.webp',
      huella : 'assets/images/2_Huellas Escaneos25 Philander opossum - zorro de cuatro ojos.webp',
      texto1 : 'Es un zorro o zarigüeya de color oscuro con un par de manchas en la cara arriba de los ojos. Es uno de los zorros más frecuentes en las áreas silvestres protegidas.',
      texto2 : 'Huellas como si estuviera midiendo cuartas, dedos extendidos.',
      texto3 : 'Pata delantera 2.5-3.5 cm x 3.5-4.5 cm. Pata trasera 3-4 cm x 4.5-5.5 cm.'
  ),
  Animal(
      id : 3,
      nombre : 'Zorro de agua',
      nombreCientifico : 'Chironectes minimus',
      imagen : 'assets/images/3_Chironectes minimus TDL Lisa Sanchez Aguilar - escaneo para Museo Nacional de Costa Rica 300dpi.webp',
      huella : 'assets/images/3_Huellas Escaneos05 Chironetes minimus - zorro de agua.webp',
      texto1 : 'Un zorro adaptado a la vida acuática.',
      texto2 : 'Huellas que muestran las patas con membranas entre los dedos.',
      texto3 : 'Pata delantera 2-2.5 cm x 3-4 cm. Pata trasera 2.5-6 cm x 5-6 cm.'
  ),
  Animal(
      id : 4,
      nombre : 'Zorro de balsa',
      nombreCientifico : 'Caluromys derbianus',
      imagen : 'assets/images/4_Caluromys derbianus TDL Lisa Sanchez Aguilar - escaneo para Museo Nacional de Costa Rica 300dpi.webp',
      huella : 'assets/images/4_Huellas Escaneos03 Caluromys derbianus - zorro de balsa - zarigueya lanuda.webp',
      texto1 : 'También llamado Zorro de agua. Un zorro de color café dorado. Más fácil de encontrar en los árboles.',
      texto2 : 'Huellas como si estuviera midiendo cuartas, dedos extendidos, es una especie muy arborícola por lo que es difícil encontrar sus huellas.',
      texto3 : 'Pata delantera 2.5 cm x 4 cm. Pata trasera 2.5 cm x 4.5 cm.'
  ),
  Animal(
      id : 5,
      nombre : 'Oso Colmenero',
      nombreCientifico : 'Tamandua mexicana',
      imagen : 'assets/images/5_Tamandua mexicana TDL Lisa Sanchez Aguilar - escaneo para Museo Nacional de Costa Rica 300dpi.webp',
      huella : 'assets/images/5_Huellas Escaneos32 Tamandua mexicana - oso colmenero - oso mielero - oso chaleco.webp',
      texto1 : 'Tamandua mexicana, Oso Colmenero, Oso Mielero u Oso Chaleco. Un oso hormiguero con una característica coloración en el cuerpo que se parece a un chaleco oscuro. Esta especie se encuentra tanto en las ramas altas como en el suelo del bosque.',
      texto2 : 'Pata delantera será muy diferente a la trasera, pues se nota como un gran cojinete con una gran uña curva a la par. Pata trasera es más común presentando 5 dedos.',
      texto3 : 'Pata delantera 5 cm x 6 cm. Pata trasera 5 cm x 7 cm.'
  ),
  Animal(
      id : 6,
      nombre : 'Tapacara',
      nombreCientifico : 'Cyclopes didactylus',
      imagen : 'assets/images/6_Cyclopes-didactylus-TDL-Lisa-Sanchez-Aguilar-escaneo-para-Museo-Nacional-de-Costa-Rica-300dpi.webp',
      huella : 'assets/images/6_Huellas-Escaneos08-Cyclopes-didactylus-serafin-del-platanar-ceibita-tapacara.webp',
      texto1 : 'Serafín del Platanar, Ceibita. El más pequeño de los osos hormigueros, de un color café dorado. Sobre todo zonas bajas.',
      texto2 : 'Huellas similares a Tamandua mexicana pero de mucho menor tamaño, aunque será difícil hallarlas por su tamaño y por ser especie muy arborícola.',
      texto3 : 'Similares a Tamandua mexicana pero mucho menor tamaño.'
  ),
  Animal(
      id : 7,
      nombre : 'Oso hormiguero gigante',
      nombreCientifico : 'Myrmecophaga tridactyla',
      imagen : 'assets/images/7_Myrmecophaga trydactila TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/7_Huellas Escaneos20 Myrmecophaga tridactyla - oso caballo - oso hormiguero gigante.webp',
      texto1 : 'Oso caballo. Muy raro, es el oso hormiguero más grande del país. ',
      texto2 : 'Huellas similares a Tamandua mexicana pero de mayor tamaño.',
      texto3 : 'Similares a Tamandua mexicana pero mayor tamaño.'
  ),
  Animal(
      id : 8,
      nombre : 'Armadillo o Cusuco',
      nombreCientifico : '8.	Dasypus novemcinctus',
      imagen : 'assets/images/8_Dasypus novemcinctus TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/8_Huellas Escaneos10 Dasypus novemcinctus - armadillo - cusuco.webp',
      texto1 : 'Presenta un característico caparazón, por lo que es fácil de identificar. Especie muy adaptable, se pueden encontrar en muchos tipos de hábitat. Puede llegar a zonas altas como Prusia, Irazú.',
      texto2 : 'Huellas más frecuentemente se les notarán 3 dedos. Pero su uña será gruesa y sobresaliente. En algunos casos si el terreno es muy blando se notará dedos adicionales atrás y quizás hasta la marca de la cola en medio de dos huellas.',
      texto3 : 'Pata delantera 2 cm x 3 cm. Pata trasera 4 cm x 5 cm.'
  ),
  Animal(
      id : 9,
      nombre : 'Guatuza o Cherenga',
      nombreCientifico : 'Dasyprocta punctata',
      imagen : 'assets/images/9_Dasyprocta punctata TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/9_Huellas Escaneos09 Dasyprocta punctata.webp',
      texto1 : 'Un gran roedor terrestre de color café dorado, con orejas muy pequeñas y cola poco visible. Actualmente se ha registrado en zonas tan altas como Barva.',
      texto2 : 'Huellas más frecuentemente se les notarán 3 dedos. Pero se verán más delgados que los del armadillo y su uña no será tan gruesa o sobresaliente.',
      texto3 : 'Pata delantera 3 cm x 3.5 cm. Pata trasera 3.5 cm x 4.5 cm.'
  ),
  Animal(
      id : 10,
      nombre : 'Tepezcuintle',
      nombreCientifico : 'Cuniculus paca',
      imagen : 'assets/images/10_Cuniculus paca TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/10_Huellas Escaneos07 Cuniculus paca - tepezcuintle.webp',
      texto1 : 'Gran roedor, principalmente nocturno y con manchas claras en los costados del cuerpo. Zonas bajas y medias sobre todo.',
      texto2 : 'Huellas más frecuentemente se les notarán 3 dedos. Pero sus dedos se verán gruesos y con uñas no tan grandes como en el armadillo.',
      texto3 : 'Pata delantera 4 cm x 4 cm. Pata trasera 4.5 cm x 5.5 cm.'
  ),
  Animal(
      id : 11,
      nombre : 'Puercoespín Neotropical',
      nombreCientifico : 'Sphiggurus mexicanus',
      imagen : 'assets/images/11_Sphiggurus mexicanus TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/11_Huellas Escaneos30 Sphiggurus mexicanus - puercoespin neotropical.webp',
      texto1 : 'Gran roedor de color oscuro con espinas amarillentas, cola larga y no se le notan orejas. Aunque es muy arborícola, también se encontrará caminando por el suelo.',
      texto2 : 'Huellas se ven como cojinetes grandes, ovalados, con pequeñas uñas sobresaliendo. ',
      texto3 : 'Pata delantera 3 cm x 5 cm. Pata trasera 4 cm x 7 cm.'
  ),
  Animal(
      id : 12,
      nombre : 'Conejo de monte',
      nombreCientifico : 'Sylvilagus gabbi',
      imagen : 'assets/images/12_Sylvilagus gabbii TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/12_Huellas Escaneos31 Sylvilagus brasiliensis - conejo de monte.webp',
      texto1 : 'Este conejo, como otros similares, presenta las típicas orejas sobresalientes y cola muy corta.',
      texto2 : 'Huellas muy redondeadas u ovaladas, dedos y uñas son poco sobresalientes. Sus rastros se podrán encontrar en áreas abiertas o senderos.',
      texto3 : 'Pata delantera 2 cm x 3 cm. Pata trasera 3 cm x 5 cm.'
  ),
  Animal(
      id : 13,
      nombre : 'Coyote',
      nombreCientifico : 'Canis latrans',
      imagen : 'assets/images/13_Canis latrans TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/13_Huellas Escaneos04 Canis latrans - coyote.webp',
      texto1 : 'Similar en forma a un perro policía, el coyote presenta orejas puntiagudas y cola larga y peluda. Muy frecuentes sus rastros en áreas como Irazú, Zona Protector Toro Chayote o el bosque El Niño.',
      texto2 : 'Típicas huellas como de perro, de las que será difícil de distinguir en áreas donde deambulan perros domésticos o cimarrones. Generalmente se marcarán uñas (aunque en terrenos duros tal vez no tanto) y un cojinete triangular. A menudo en la huella se podrá dibujar una X entre los dedos y el cojinete sin que los toque mucho. Sobre todo, se encontrarán en áreas abiertas, senderos y similares.',
      texto3 : 'Pata delantera 5 cm x 6 cm. Pata trasera 4 cm x 5.5 cm.'
  ),
  Animal(
      id : 14,
      nombre : 'Zorro Grís o Tigrillo',
      nombreCientifico : 'Urocyon cinereoargenteus',
      imagen : 'assets/images/14_Urocyon cinereoargenteus TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/14_Huellas Escaneos35 Urocyon cinereoargenteus - zorra gris - tigrillo.webp',
      texto1 : 'Este pequeño familiar del coyote presenta color gris en la mayoría del cuerpo y tonos de café naranja. ',
      texto2 : 'Huellas similares a perro o coyote, pero más pequeñas y no siempre se marcan las uñas.',
      texto3 : 'Pata delantera 2.5-4 cm x 3-4.5 cm. Pata trasera 2-3 cm x 2.5-4 cm.'
  ),
    Animal(
      id : 15,
      nombre : 'Manigordo - Ocelote',
      nombreCientifico : 'Leopardus pardalis',
      imagen : 'assets/images/15_Leopardus pardalis TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/15_Huellas Escaneos14 Leopardus pardalis - manigordo - ocelote.webp',
      texto1 : 'Este gato silvestre es de tamaño mediano, con una cola proporcionalmente corta y con manchas variables pero que en los costados suelen ser alargadas. ',
      texto2 : 'Huellas tipo felino, suelen ser intermedias entre los felinos más grandes y los pequeños felinos.',
      texto3 : 'Pata delantera 4.5 cm x 5 cm. Pata trasera 4 cm x 4 cm.'
    ),
    Animal(
      id : 16,
      nombre : 'Tigrillo - Caucel - Margay',
      nombreCientifico : 'Leopardus wiedii',
      imagen : 'assets/images/16_Leopardus wiedii TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/16_Huellas Escaneos16 Leopardus wiedii - tigrillo - caucel - margay.webp',
      texto1 : 'Felino de menor tamaño que el manigordo, con cola proporcionalmente larga, ojos grandes y manchas variables. Especie que a menudo utiliza mucho los árboles. Ha sido visto en senderos en Monumento Nacional Guayabo.',
      texto2 : 'Huellas tipo felino, pequeñas.',
      texto3 : 'Pata delantera 3 cm x 4 cm. Pata trasera 3 cm x 3 cm.'
    ),
    Animal(
      id : 17,
      nombre : 'Tigrillo',
      nombreCientifico : 'Leopardus tigrinus',
      imagen: 'assets/images/17_Leopardus tigrinus TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/17_Huellas Escaneos15 Leopardus tigrinus.webp',
      texto1 : 'El felino más pequeño de Costa Rica, con manchas variables que suelen ser oscuras y pequeñas. Especie que al parecer, es más frecuente en tierras altas.',
      texto2 : 'Huellas tipo felino, pequeñas.',
      texto3 : 'Pata delantera 2.5 cm x 2.8 cm aprox. Pata trasera 2.5 cm x 2.5 cm aprox.'
    ),
  Animal(
      id : 18,
      nombre : 'León Breñero - Yaguarundi',
      nombreCientifico : 'Puma yagouaroundi',
      imagen : 'assets/images/18_Puma yagouaroundi TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/18_Huellas Escaneos29 Puma yagouaroundi.webp',
      texto1 : 'Felino pequeño de color oscuro, sin manchas.',
      texto2 : 'Huellas tipo felino, pequeñas.',
      texto3 : 'Pata delantera 3.5 cm x 3.5 cm. Pata trasera 4 cm x 4 cm.'
    ),
  Animal(
      id : 19,
      nombre : 'Puma - León Americano',
      nombreCientifico : 'Puma concolor',
      imagen : 'assets/images/19_Puma concolor TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/19_Huellas Escaneos28 Puma concolor - puma.webp',
      texto1 : 'Gran felino de color café sin manchas, con tonos de color claro en la cara y vientre. ',
      texto2 : 'Huellas tipo felino, grandes, un gran cojinete, dedos alargados y con cierta punta, no tan redondeados como los del jaguar. Cojinete tendrá 2 lóbulos sobresalientes arriba y 3 abajo.',
      texto3 : 'Pata delantera 7 cm x 7 cm. Pata trasera 7 cm x 8 cm.'
    ),
  Animal(
      id : 20,
      nombre : 'Jaguar',
      nombreCientifico : 'Panthera onca',
      imagen : 'assets/images/20_Panthera onca TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/20_Huellas Escaneos23 Panthera onca - jaguar.webp',
      texto1 : 'Gran felino con cabeza grande y manchas tipo roseta con alguna pinta adentro.',
      texto2 : 'Huellas tipo felino, grandes, un gran cojinete, dedos redondeados. Cojinete tendrá 2 lóbulos sobresalientes abajo y arriba no tendrá.',
      texto3 : 'Pata delantera 8 cm x 8 cm. Pata trasera 7 cm x 8 cm.'
    ),
  Animal(
      id : 21,
      nombre : 'Mapache - Oso Lavador',
      nombreCientifico : 'Procycon lotor',
      imagen : 'assets/images/21_Procycon lotor TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/21_Huellas Escaneos27 Procyon lotor - mapachin - osito lavador.webp',
      texto1 : 'Mamífero con una característica mancha tipo antifaz en la cara y cola anillada.',
      texto2 : 'Huella con notable planta del pie (plantígrado). Dedos delgados y largos con uñas poco notables. La pata trasera puede presentar toda la planta hasta el talón.',
      texto3 : 'Pata delantera 5 cm x 5 cm. Pata trasera 5 cm x 4-9 cm.'
    ),
  Animal(
      id:  22,
      nombre : 'Pizote',
      nombreCientifico : 'Nazua narica',
      imagen : 'assets/images/22_Nazua narica TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/22_Huellas Escaneos21 Nasua narica - pizote - pizote solo - coati.webp',
      texto1 : 'Familiar del mapache con nariz larga y cola larga, peluda, que a menudo lleva alzada. Hembras y juveniles suelen formar grupos. ',
      texto2 : 'Huella con notable planta del pie (plantígrado). Dedos delgados y alargados con uñas notables.',
      texto3 : 'Pata delantera 4 cm x 5 cm. Pata trasera 4 cm x 4-7 cm.'
    ),
  Animal(
      id : 23,
      nombre : 'Martilla',
      nombreCientifico : 'Potos flavus',
      imagen : 'assets/images/23_Potos flavus TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/23_Huellas Escaneos26 Potos flavus - martilla.webp',
      texto1 : 'Familiar del mapache, pero muy distinto, con color café, orejas redondeadas y con cola que se puede enrollar en ramas como algunos monos. ',
      texto2 : 'Huella con notable planta del pie (plantígrado). Sus rastros serán poco factibles de encontrar por ser muy arborícola.',
      texto3 : 'Pata delantera 4.5 cm x 5.5 cm. Pata trasera 4 cm x 6.5 cm.'
    ),
  Animal(
      id : 24,
      nombre : 'Cacomistle',
      nombreCientifico : 'Bassariscus sumichrasti',
      imagen : 'assets/images/24_Bassariscus sumichrasti TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/24_Huellas Escaneos01 Bassariscus sumichrasti - cacomistle - ostoche.webp',
      texto1 : 'Familiar del mapache, con orejas puntiagudas y cola anillada, relativamente frecuente en zonas altas como sector Barva o Prusia, Volcán Irazú.',
      texto2 : 'Huella con notable planta del pie (plantígrado). Sus rastros serán poco factibles de encontrar por ser muy arborícola.',
      texto3 : 'Pata delantera 3 cm x 3.5 cm. Pata trasera 3 cm x 3 cm.'
    ),
  Animal(
      id : 25,
      nombre : 'Comadreja',
      nombreCientifico : 'Mustela frenata',
      imagen : 'assets/images/25_Mustela frenata TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/25_Huellas Escaneos19 Mustela frenata - comadreja.webp',
      texto1 : 'Pequeño, cuerpo alargado, patas cortas, color café oscuro en dorso, cara con tonos negro y blanco. ',
      texto2 : 'Huellas con dedos con garras y cojinete plantar que en muchos casos se marca con mayor fuerza la parte superior, viéndose angosto a lo ancho, y en algunos casos se notará el resto de la planta del pie un poco menos marcada. ',
      texto3 : 'Pata delantera 2 cm x 2.5 cm. Pata trasera 2 cm x 2 cm.'
    ),
  Animal(
      id : 26,
      nombre : 'Grisón - Hurón',
      nombreCientifico : 'Galictis vittata',
      imagen : 'assets/images/26_Galictis vittata TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/26_Huellas Escaneos13 Galictis vittata - grisón - hurón.webp',
      texto1 : 'Especie de cola relativamente corta, color gris en dorso, negro abajo y cara con una banda. ',
      texto2 : 'Huellas con dedos con garras y cojinete plantar que en muchos casos se marca con mayor fuerza la parte superior, viéndose angosto a lo ancho, y en algunos casos se notará el resto de la planta del pie un poco menos marcada. En huellas más profundamente marcadas podría notarse membranas interdigitales, pero no tan amplias como en la nutria.',
      texto3 : 'Pata delantera 4.5 cm x 5.5 cm. Pata trasera 4.5 cm x 5.5 cm.'
    ),
  Animal(
      id : 27,
      nombre : 'Tolomuco',
      nombreCientifico : 'Eira barbara',
      imagen : 'assets/images/27_Eira barbara TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/27_Huellas Escaneos12 Eira barbara - tolomuco - cholomuco.webp',
      texto1 : 'Mediano, color negro, cola larga y peluda, a veces se ha confundido con el felino llamado león breñero, pero no es un gato. ',
      texto2 : 'Huellas con dedos con garras y cojinete plantar que en muchos casos se marca con mayor fuerza la parte superior, viéndose angosto a lo ancho, y en algunos casos se notará el resto de la planta del pie un poco menos marcada. ',
      texto3 : 'Pata delantera 5 cm x 7 cm. Pata trasera 5 cm x 4-8 cm.'
    ),
  Animal(
      id : 28,
      nombre : 'Zorro Hediondo',
      nombreCientifico : 'Conepatus semistriatus',
      imagen : 'assets/images/28_Conepatus semistriatus TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/28_Huellas Escaneos06 Conepatus semistriatus - zorro hediondo.webp',
      texto1 : 'Un zorrillo con su típica coloración de bandas blancas en el dorso sobre fondo negro, cola con mucho blanco. ',
      texto2 : 'Huellas con dedos con garras y cojinete plantar que en muchos casos se marca con mayor fuerza como angosto a lo ancho, y en algunos casos se notará el resto de la planta del pie. Las patas delanteras pueden mostrar garras largas.',
      texto3 : 'Pata delantera 3 cm x 3 cm. Pata trasera 3 cm x 4.5 cm.'
    ),
  Animal(
      id : 29,
      nombre : 'Nutria - Perro de Agua',
      nombreCientifico : 'Lontra longicaudis',
      imagen : 'assets/images/29_Lontra longicaudis TDL Lisa Sanchez Aguilar.webp',
      huella : 'assets/images/29_Huellas Escaneos17 Lontra longicaudis - nutria - perro de agua.webp',
      texto1 : 'Cuerpo alargado y patas cortas, se observa sobre todo en el agua u orillas de ríos o cursos de agua. A veces se podrían encontrar sus excretas sobre troncos o piedras, de débil consistencia y con notables restos de caparazones de crustáceos de río o escamas de peces.',
      texto2 : 'Huellas con dedos con garras y cojinete plantar que en muchos casos se marca con mayor fuerza como angosto a lo ancho, y en algunos casos se nota el resto de la planta del pie. En la pata trasera no se nota el resto de la planta. Se pueden ver membranas interdigitales entre los dedos por ser especie de hábitos muy acuáticos. Rastros sobre todo en orillas y playas arenosas de ríos.',
      texto3 : 'Pata delantera 6 cm x 7 cm. Pata trasera 8 cm x 8 cm.'
    ),
  Animal(
      id : 30,
      nombre : 'Danta - Macho de Monte',
      nombreCientifico : 'Tapirus bairdii',
      imagen : 'assets/images/30_Tapirusbairdii.webp',
      huella : 'assets/images/30_Tapirusbairdiidantadantotapirmachodemonte.webp',
      texto1 : 'El mamífero silvestre más voluminoso del país, color oscuro, patas fuertes, orejas cortas redondeadas, cola muy corta y una trompa móvil. Las crías muy jóvenes tienen pelaje manchado.',
      texto2 : 'Huella grande, inconfundible, con tres grandes dedos redondeados con pezuñas, en la huella de la pata delantera a veces se podrá notar un cuarto dedo atrás más pequeño. La huella más grande de un mamífero silvestre en Costa Rica.',
      texto3 : 'Pata delantera 17 cm x 18 cm. Pata trasera 17 cm x 17 cm.'
    ),
  Animal(
      id : 31,
      nombre : 'Saino',
      nombreCientifico : 'Pecari tajacu',
      imagen : 'assets/images/31_Pecaritajacu.webp',
      huella : 'assets/images/31_Huellas Escaneos24Pecaritajacusainopecaridecollar.webp',
      texto1 : 'Mamífero con apariencia de cerdo, pelaje oscuro con una banda clara entre los hombros y el cuello. Forman grupos a veces de muchos individuos.',
      texto2 : 'Huellas de 2 pezuñas, más redondeadas y no tan puntiagudas como las de venados. Esta especie está más extendida que el chancho de monte, y la gran mayoría de este tipo de rastros, corresponderán a esta especie.',
      texto3 : 'Pata delantera 3.5 cm x 4 cm. Pata trasera 3.5 cm x 4 cm.'
    ),
  Animal(
      id : 32,
      nombre : 'Chancho de Monte',
      nombreCientifico : 'Tayassu pecari',
      imagen : 'assets/images/32_Tayassupecari.webp',
      huella : 'assets/images/32_HuellasEscaneos34Tayassupecari.webp',
      texto1 : 'Mamífero con apariencia de cerdo, pelaje oscuro con coloración clara en parte de la cara. Forma grupos a veces muy numerosos. ',
      texto2 : 'Huellas de 2 pezuñas, más redondeadas y no tan puntiagudas como las de venados. Esta especie es muy rara, por lo que será poco probable encontrar sus rastros en áreas muy exploradas.',
      texto3 : 'Pata delantera 5 cm x 5 cm. Pata trasera 5 cm x 5 cm.'
    ),
  Animal(
      id : 33,
      nombre : 'Cabro de Monte',
      nombreCientifico : 'Mazama temama',
      imagen : 'assets/images/33_Mazamaamerica.webp',
      huella : 'assets/images/33_HuellasEscaneos18Mazamaamericana.webp',
      texto1 : 'Parecido al venado cola blanca, pero más pequeño y con astas (cachos) no ramificadas (una sola punta) en machos y color más oscuro y rojizo. ',
      texto2 : 'Huellas de 2 pezuñas puntiagudas, es de hábitos más elusivos que el venado cola blanca, encontrándose en bosque adentro y las huellas de este tipo en zonas altas, corresponderán a esta especie.',
      texto3 : 'Pata delantera 2.5 cm x 3 cm. Pata trasera 2.5 cm x 3 cm.'
    ),
  Animal(
      id : 34,
      nombre : 'Venado Cola Blanca',
      nombreCientifico : 'Odocoileus virginianus',
      imagen : 'assets/images/34_OdocoileusvirginianusTDLLisaSanchezAguilar.webp',
      huella : 'assets/images/34_HuellasEscaneos22Odocoileusvirginianus-venadocolablanca.webp',
      texto1 : 'El típico venado símbolo nacional, orejas largas, patas largas, cola corta y astas (cachos) ramificadas en los machos. Las crías jóvenes presentan pelaje manchado. Sobre todo en las zonas bajas como La Selva, Sarapiquí.',
      texto2 : 'Huellas de 2 pezuñas puntiagudas. Se verán principalmente en áreas abiertas, senderos, bordes de bosque u otros similares.',
      texto3 : 'Pata delantera 4 cm x 5.5 cm aprox. Pata trasera 4 cm x 5.5 cm aprox.'
    )
  ];