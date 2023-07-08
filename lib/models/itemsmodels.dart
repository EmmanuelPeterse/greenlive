class Items{
  late int id;
  late String title;
  late String subtitle;
  late String allInfo;
  late String images;
  late String famille;
  late String size;
  late String hauteur;
  late String type;
  late String culutre;

  Items({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.allInfo,
    required this.images,
    required this.famille,
    required this.size,
    required this.hauteur,
    required this.type,
    required this.culutre,

  });


  // FONCTION TO FECT ALL ITEM

  static List<Items> getAllItems(){

    return [

  Items(id: 1, title: 'image0',                subtitle: 'dffg',                       allInfo: 'fsfd',                                                     images: 'assets/images/item/plant0.png',           famille: 'famile name',   size: '25 cm',   hauteur: '300 cm',  type: 'Water',        
                                                                                       culutre: ''           ),
  Items(id: 2, title: 'image1',                subtitle: 'dffg',                       allInfo: 'fsfd',                                                     images: 'assets/images/item/plant1.png',           famille: 'famile name',   size: '25 cm',   hauteur: '300 cm',  type: 'Water',        
                                                                                       culutre: ''           ),
  Items(id: 3, title: 'aloé',                  subtitle: 'dffg',                       allInfo: 'fsfd',                                                     images: 'assets/images/item/plant2.png',           famille: 'famile name',   size: '25 cm',   hauteur: '300 cm',  type: 'Water',        
                                                                                       culutre: ''           ),
  Items(id: 4, title: 'arctotis',              subtitle: 'Arctottis grandis',          allInfo: 'Palnte vivace aux longues tiges grêles,aux feuillees dentelées et blanchâtre. les fleurs ressemble\n à de grande maguerites'
                                                                                                'au couleurs pastel, jaune, rose, orange et au coeur marron, voilet ou pourpre. la floraison a lieu de jeuille à otctobre , mais\n'
                                                                                                'les fleurs ne souvre s\'ouvre pas si la température n\'est assez élevées soit (plus de 18°C )' ,                                                                                                                         
                                                                                                                                                           images: 'assets/images/item/arctotis.jpg',          famille: 'Composées',     size: '',         hauteur: '30 cm',   type: 'Himide',        
                                                                                       culutre: ''           ),

 Items(id: 5, title: 'artichaut',              subtitle: 'Composé',                   allInfo: 'L\'artichaut est une plante herbacée vivace, avec de longues feuilles découpées, vert grisé dessus, blanc-gris et duveteuses dessous\n'
                                                                                               'capitules ovides ou coniques,composées d\'un réceptacle charmu et de bractées imbriquées les unes dans les autres, de couleur verte ou violette selon les espèces dans. Les fleurs, d\'un bleu-violet\n '
                                                                                               'naissent sur le réceptacle.',                                images: 'assets/images/item/artchaut.jpg',       famille: 'acanthacée',    size: '',        hauteur: '1 à 1,50m', type: 'humide',        
                                                                                       culutre: ''           ),



 Items(id: 1, title: 'astible',                subtitle: 'dffg',                       allInfo: 'fsfd',                                                      images: 'assets/images/item/astible.jpg',         famille: 'famile name',   size: '25 cm',   hauteur: '300 cm',   type: 'Water',        
                                                                                       culutre: ''           ),
 Items(id: 2, title: 'bleuet',                 subtitle: 'dffg',                       allInfo: 'fsfd',                                                      images: 'assets/images/item/bleuet.jpg',          famille: 'famile name',   size: '25 cm',   hauteur: '300 cm',   type: 'Water',        
                                                                                       culutre: ''           ),
 Items(id: 3, title: 'boule_azuree',           subtitle: 'dffg',                       allInfo: 'fsfd',                                                      images: 'assets/images/item/boule_azuree.jpg',    famille: 'famile name',   size: '25 cm',   hauteur: '300 cm',   type: 'Water',        
                                                                                       culutre: ''           ),
 Items(id: 4, title: 'Carline',                subtitle: 'Arctottis grandis',          allInfo: 'Palnte vivace aux longues tiges grêles,aux feuillees dentelées et blanchâtre. les fleurs ressemble\n à de grande maguerites'
                                                                                                'au couleurs pastel, jaune, rose, orange et au coeur marron, voilet ou pourpre. la floraison a lieu de jeuille à otctobre , mais\n'
                                                                                                'les fleurs ne souvre s\'ouvre pas si la température n\'est assez élevées soit (plus de 18°C )' ,                                         
                                                                                                                                                             images: 'assets/images/item/carline.jpg',         famille: 'Composées',     size: '',        hauteur: '30 cm',    type: 'Himide',        
                                                                                       culutre: ''           ),
 Items(id: 6,  title: 'Célosie',             subtitle: 'Composé',                      allInfo: 'more information about',                                    images: 'assets/images/item/célosie.jpg',         famille: 'acanthacée',    size: '',        hauteur: '32 cm',    type: 'humide',        
                                                                                       culutre: ''           ),
 Items(id: 7,  title: 'Chamaedorea',         subtitle: 'Composé',                      allInfo: 'more information about',                                    images: 'assets/images/item/Chamaedorea.png',     famille: 'acanthacée',    size: '',        hauteur: '32 cm',    type: 'humide',        
                                                                                       culutre: ''           ),
 Items(id: 8,  title: 'Chrysanthèmes',       subtitle: 'dffg',                         allInfo: 'fsfd',                                                      images: 'assets/images/item/chrysanthèmes.jpg',   famille: 'famile name',   size: '25 cm',   hauteur: '300 cm',   type: 'Water',        
                                                                                       culutre: ''           ),
 Items(id: 9,  title: 'Dahlia',              subtitle: 'dffg',                         allInfo: 'fsfd',                                                      images: 'assets/images/item/dahlia.png',          famille: 'famile name',   size: '25 cm',   hauteur: '300 cm',   type: 'Water',        
                                                                                       culutre: ''           ),
 Items(id: 10, title: 'Hortensia',           subtitle: 'dffg',                         allInfo: 'fsfd',                                                      images: 'assets/images/item/hortensia.jpg',       famille: 'famile name',   size: '25 cm',   hauteur: '300 cm',   type: 'Water',        
                                                                                       culutre: ''           ),
 Items(id: 11, title: 'Immortelle_fleur',    subtitle: 'Arctottis grandis',            allInfo: 'Palnte vivace aux longues tiges grêles,aux feuillees dentelées et blanchâtre. les fleurs ressemble\n à de grande maguerites'
                                                                                                'au couleurs pastel, jaune, rose, orange et au coeur marron, voilet ou pourpre. la floraison a lieu de jeuille à otctobre , mais\n'
                                                                                                'les fleurs ne souvre s\'ouvre pas si la température n\'est assez élevées soit (plus de 18°C )' ,                                         
                                                                                                                                                             images: 'assets/images/item/immortelle_fleur.jpg', famille: 'Composées',     size: '',        hauteur: '30 cm',    type: 'Himide',        
                                                                                       culutre: ''           ),

 Items(id: 5, title: 'Latris',               subtitle: 'Composé',                      allInfo: 'more information about',                                    images: 'assets/images/item/latris.jpg',           famille: 'acanthacée',    size: '',        hauteur: '32 cm',   type: 'humide',        
                                                                                       culutre: ''           ),
  


    ];


  }








}