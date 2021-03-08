import 'package:flutter/material.dart';

class AnimalData{
  static final getData = [
    {
      'id' : 15,
      'nombre' : 'Manigordo - Ocelote',
      'nombreCientifico' : 'Leopardus pardalis',
      'imagen' : 'assets/images/15_Leopardus pardalis TDL Lisa Sanchez Aguilar.webp',
      'huella' : 'assets/images/15_Huellas Escaneos14 Leopardus pardalis - manigordo - ocelote.webp',
      'texto1' : 'Este gato silvestre es de tamaño mediano, con una cola proporcionalmente corta y con manchas variables pero que en los costados suelen ser alargadas. ',
      'texto2' : 'Huellas tipo felino, suelen ser intermedias entre los felinos más grandes y los pequeños felinos.',
      'texto3' : ''
    },
    {
      'id' : 16,
      'nombre' : 'Tigrillo - Caucel - Margay',
      'nombreCientifico' : 'Leopardus wiedii',
      'imagen' : 'assets/images/16_Leopardus wiedii TDL Lisa Sanchez Aguilar.webp',
      'huella' : 'assets/images/16_Huellas Escaneos16 Leopardus wiedii - tigrillo - caucel - margay.webp',
      'texto1' : 'Felino de menor tamaño que el manigordo, con cola proporcionalmente larga, ojos grandes y manchas variables. Especie que a menudo utiliza mucho los árboles. Ha sido visto en senderos en Monumento Nacional Guayabo.',
      'texto2' : 'Huellas tipo felino, pequeñas.',
      'texto3' : ''
    },
    {
      'id' : 17,
      'nombre' : 'Tigrillo',
      'nombreCientifico' : 'Leopardus tigrinus',
      'imagen' : 'assets/images/17_Leopardus tigrinus TDL Lisa Sanchez Aguilar.webp',
      'huella' : 'assets/images/17_Huellas Escaneos15 Leopardus tigrinus.webp',
      'texto1' : 'El felino más pequeño de Costa Rica, con manchas variables que suelen ser oscuras y pequeñas. Especie que al parecer, es más frecuente en tierras altas.',
      'texto2' : 'Huellas tipo felino, pequeñas.',
      'texto3' : ''
    },
    {
      'id' : 18,
      'nombre' : 'León Breñero - Yaguarundi',
      'nombreCientifico' : 'Puma yagouaroundi',
      'imagen' : 'assets/images/18_Puma yagouaroundi TDL Lisa Sanchez Aguilar.webp',
      'huella' : 'assets/images/18_Huellas Escaneos29 Puma yagouaroundi.webp',
      'texto1' : 'Felino pequeño de color oscuro, sin manchas.',
      'texto2' : 'Huellas tipo felino, pequeñas.',
      'texto3' : ''
    },
    {
      'id' : 19,
      'nombre' : 'Puma - León Americano',
      'nombreCientifico' : 'Puma concolor',
      'imagen' : 'assets/images/19_Puma concolor TDL Lisa Sanchez Aguilar.webp',
      'huella' : 'assets/images/19_Huellas Escaneos28 Puma concolor - puma.webp',
      'texto1' : 'Gran felino de color café sin manchas, con tonos de color claro en la cara y vientre. ',
      'texto2' : 'Huellas tipo felino, grandes, un gran cojinete, dedos alargados y con cierta punta, no tan redondeados como los del jaguar. Cojinete tendrá 2 lóbulos sobresalientes arriba y 3 abajo.',
      'texto3' : ''
    },
    {
      'id' : 20,
      'nombre' : 'Jaguar',
      'nombreCientifico' : 'Panthera onca',
      'imagen' : 'assets/images/20_Panthera onca TDL Lisa Sanchez Aguilar.webp',
      'huella' : 'assets/images/20_Huellas Escaneos23 Panthera onca - jaguar.webp',
      'texto1' : 'Gran felino con cabeza grande y manchas tipo roseta con alguna pinta adentro.',
      'texto2' : 'Huellas tipo felino, grandes, un gran cojinete, dedos redondeados. Cojinete tendrá 2 lóbulos sobresalientes abajo y arriba no tendrá.',
      'texto3' : ''
    },
    {
      'id' : 21,
      'nombre' : 'Mapache - Oso Lavador',
      'nombreCientifico' : 'Procycon lotor',
      'imagen' : 'assets/images/21_Procycon lotor TDL Lisa Sanchez Aguilar.webp',
      'huella' : 'assets/images/21_Huellas Escaneos27 Procyon lotor - mapachin - osito lavador.webp',
      'texto1' : 'Mamífero con una característica mancha tipo antifaz en la cara y cola anillada.',
      'texto2' : 'Huella con notable planta del pie (plantígrado). Dedos delgados y largos con uñas poco notables. La pata trasera puede presentar toda la planta hasta el talón.',
      'texto3' : ''
    },
    {
      'id' : 22,
      'nombre' : 'Pizote',
      'nombreCientifico' : 'Nazua narica',
      'imagen' : 'assets/images/22_Nazua narica TDL Lisa Sanchez Aguilar.webp',
      'huella' : 'assets/images/22_Huellas Escaneos21 Nasua narica - pizote - pizote solo - coati.webp',
      'texto1' : 'Familiar del mapache con nariz larga y cola larga, peluda, que a menudo lleva alzada. Hembras y juveniles suelen formar grupos. ',
      'texto2' : 'Huella con notable planta del pie (plantígrado). Dedos delgados y alargados con uñas notables.',
      'texto3' : ''
    },
    {
      'id' : 23,
      'nombre' : 'Martilla',
      'nombreCientifico' : 'Potos flavus',
      'imagen' : 'assets/images/23_Potos flavus TDL Lisa Sanchez Aguilar.webp',
      'huella' : 'assets/images/23_Huellas Escaneos26 Potos flavus - martilla.webp',
      'texto1' : 'Familiar del mapache, pero muy distinto, con color café, orejas redondeadas y con cola que se puede enrollar en ramas como algunos monos. ',
      'texto2' : 'Huella con notable planta del pie (plantígrado). Sus rastros serán poco factibles de encontrar por ser muy arborícola.',
      'texto3' : ''
    },
    {
      'id' : 24,
      'nombre' : 'Cacomistle',
      'nombreCientifico' : 'Bassariscus sumichrasti',
      'imagen' : 'assets/images/24_Bassariscus sumichrasti TDL Lisa Sanchez Aguilar.webp',
      'huella' : 'assets/images/24_Huellas Escaneos01 Bassariscus sumichrasti - cacomistle - ostoche.webp',
      'texto1' : 'Familiar del mapache, con orejas puntiagudas y cola anillada, relativamente frecuente en zonas altas como sector Barva o Prusia, Volcán Irazú.',
      'texto2' : 'Huella con notable planta del pie (plantígrado). Sus rastros serán poco factibles de encontrar por ser muy arborícola.',
      'texto3' : ''
    },
    {
      'id' : 25,
      'nombre' : 'Comadreja',
      'nombreCientifico' : 'Mustela frenata',
      'imagen' : 'assets/images/25_Mustela frenata TDL Lisa Sanchez Aguilar.webp',
      'huella' : 'assets/images/25_Huellas Escaneos19 Mustela frenata - comadreja.webp',
      'texto1' : 'Pequeño, cuerpo alargado, patas cortas, color café oscuro en dorso, cara con tonos negro y blanco. ',
      'texto2' : 'Huellas con dedos con garras y cojinete plantar que en muchos casos se marca con mayor fuerza la parte superior, viéndose angosto a lo ancho, y en algunos casos se notará el resto de la planta del pie un poco menos marcada. ',
      'texto3' : ''
    },
    {
      'id' : 26,
      'nombre' : 'Grisón - Hurón',
      'nombreCientifico' : 'Galictis vittata',
      'imagen' : 'assets/images/26_Galictis vittata TDL Lisa Sanchez Aguilar.webp',
      'huella' : 'assets/images/26_Huellas Escaneos13 Galictis vittata - grisón - hurón.webp',
      'texto1' : 'Especie de cola relativamente corta, color gris en dorso, negro abajo y cara con una banda. ',
      'texto2' : 'Huellas con dedos con garras y cojinete plantar que en muchos casos se marca con mayor fuerza la parte superior, viéndose angosto a lo ancho, y en algunos casos se notará el resto de la planta del pie un poco menos marcada. En huellas más profundamente marcadas podría notarse membranas interdigitales, pero no tan amplias como en la nutria.',
      'texto3' : ''
    },
    {
      'id' : 27,
      'nombre' : 'Tolomuco',
      'nombreCientifico' : 'Eira barbara',
      'imagen' : 'assets/images/27_Eira barbara TDL Lisa Sanchez Aguilar.webp',
      'huella' : 'assets/images/27_Huellas Escaneos12 Eira barbara - tolomuco - cholomuco.webp',
      'texto1' : 'Mediano, color negro, cola larga y peluda, a veces se ha confundido con el felino llamado león breñero, pero no es un gato. ',
      'texto2' : 'Huellas con dedos con garras y cojinete plantar que en muchos casos se marca con mayor fuerza la parte superior, viéndose angosto a lo ancho, y en algunos casos se notará el resto de la planta del pie un poco menos marcada. ',
      'texto3' : ''
    },
    {
      'id' : 28,
      'nombre' : 'Zorro Hediondo',
      'nombreCientifico' : 'Conepatus semistriatus',
      'imagen' : 'assets/images/28_Conepatus semistriatus TDL Lisa Sanchez Aguilar.webp',
      'huella' : 'assets/images/28_Huellas Escaneos06 Conepatus semistriatus - zorro hediondo.webp',
      'texto1' : 'Un zorrillo con su típica coloración de bandas blancas en el dorso sobre fondo negro, cola con mucho blanco. ',
      'texto2' : 'Huellas con dedos con garras y cojinete plantar que en muchos casos se marca con mayor fuerza como angosto a lo ancho, y en algunos casos se notará el resto de la planta del pie. Las patas delanteras pueden mostrar garras largas.',
      'texto3' : ''
    },
    {
      'id' : 29,
      'nombre' : 'Nutria - Perro de Agua',
      'nombreCientifico' : 'Lontra longicaudis',
      'imagen' : 'assets/images/29_Lontra longicaudis TDL Lisa Sanchez Aguilar.webp',
      'huella' : 'assets/images/29_Huellas Escaneos17 Lontra longicaudis - nutria - perro de agua.webp',
      'texto1' : 'Cuerpo alargado y patas cortas, se observa sobre todo en el agua u orillas de ríos o cursos de agua. A veces se podrían encontrar sus excretas sobre troncos o piedras, de débil consistencia y con notables restos de caparazones de crustáceos de río o escamas de peces.',
      'texto2' : 'Huellas con dedos con garras y cojinete plantar que en muchos casos se marca con mayor fuerza como angosto a lo ancho, y en algunos casos se nota el resto de la planta del pie. En la pata trasera no se nota el resto de la planta. Se pueden ver membranas interdigitales entre los dedos por ser especie de hábitos muy acuáticos. Rastros sobre todo en orillas y playas arenosas de ríos.',
      'texto3' : ''
    },
    {
      'id' : 30,
      'nombre' : 'Danta - Macho de Monte',
      'nombreCientifico' : 'Tapirus bairdii',
      'imagen' : 'assets/images/30_Tapirusbairdii.webp',
      'huella' : 'assets/images/30_Tapirusbairdiidantadantotapirmachodemonte.webp',
      'texto1' : 'El mamífero silvestre más voluminoso del país, color oscuro, patas fuertes, orejas cortas redondeadas, cola muy corta y una trompa móvil. Las crías muy jóvenes tienen pelaje manchado.',
      'texto2' : 'Huella grande, inconfundible, con tres grandes dedos redondeados con pezuñas, en la huella de la pata delantera a veces se podrá notar un cuarto dedo atrás más pequeño. La huella más grande de un mamífero silvestre en Costa Rica.',
      'texto3' : ''
    },
    {
      'id' : 31,
      'nombre' : 'Saino',
      'nombreCientifico' : 'Pecari tajacu',
      'imagen' : 'assets/images/31_Pecaritajacu.webp',
      'huella' : 'assets/images/31_Huellas Escaneos24Pecaritajacusainopecaridecollar.webp',
      'texto1' : 'Mamífero con apariencia de cerdo, pelaje oscuro con una banda clara entre los hombros y el cuello. Forman grupos a veces de muchos individuos.',
      'texto2' : 'Huellas de 2 pezuñas, más redondeadas y no tan puntiagudas como las de venados. Esta especie está más extendida que el chancho de monte, y la gran mayoría de este tipo de rastros, corresponderán a esta especie.',
      'texto3' : ''
    },
    {
      'id' : 32,
      'nombre' : 'Chancho de Monte',
      'nombreCientifico' : 'Tayassu pecari',
      'imagen' : 'assets/images/32_Tayassupecari.webp',
      'huella' : 'assets/images/32_HuellasEscaneos34Tayassupecari.webp',
      'texto1' : 'Mamífero con apariencia de cerdo, pelaje oscuro con coloración clara en parte de la cara. Forma grupos a veces muy numerosos. ',
      'texto2' : 'Huellas de 2 pezuñas, más redondeadas y no tan puntiagudas como las de venados. Esta especie es muy rara, por lo que será poco probable encontrar sus rastros en áreas muy exploradas.',
      'texto3' : ''
    },
    {
      'id' : 33,
      'nombre' : 'Cabro de Monte',
      'nombreCientifico' : 'Mazama temama',
      'imagen' : 'assets/images/33_Mazamaamerica.webp',
      'huella' : 'assets/images/33_HuellasEscaneos18Mazamaamericana.webp',
      'texto1' : 'Parecido al venado cola blanca, pero más pequeño y con astas (cachos) no ramificadas (una sola punta) en machos y color más oscuro y rojizo. ',
      'texto2' : 'Huellas de 2 pezuñas puntiagudas, es de hábitos más elusivos que el venado cola blanca, encontrándose en bosque adentro y las huellas de este tipo en zonas altas, corresponderán a esta especie.',
      'texto3' : ''
    },
    {
      'id' : 34,
      'nombre' : 'Venado Cola Blanca',
      'nombreCientifico' : 'Odocoileus virginianus',
      'imagen' : 'assets/images/34_OdocoileusvirginianusTDLLisaSanchezAguilar.webp',
      'huella' : 'assets/images/34_HuellasEscaneos22Odocoileusvirginianus-venadocolablanca.webp',
      'texto1' : 'El típico venado símbolo nacional, orejas largas, patas largas, cola corta y astas (cachos) ramificadas en los machos. Las crías jóvenes presentan pelaje manchado. Sobre todo en las zonas bajas como La Selva, Sarapiquí.',
      'texto2' : 'Huellas de 2 pezuñas puntiagudas. Se verán principalmente en áreas abiertas, senderos, bordes de bosque u otros similares.',
      'texto3' : ''
    }
  ];
}