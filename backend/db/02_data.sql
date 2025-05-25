INSERT INTO tipo_fruta (nombre, descripcion, caracteristicas_principales) VALUES



('Paramecia', 'Frutas que otorgan habilidades físicas o químicas únicas.', 'Poderes variados, sin transformación animal.'),

('Zoan', 'Permiten transformarse en un animal o forma híbrida.', 'Tres formas: humana, animal y mixta.'),

('Logia', 'Permiten convertirse y manipular un elemento natural.', 'Ofrecen intangibilidad y regeneración.'),

('Doku Doku', 'Permite generar y controlar veneno.', 'Tóxica para enemigos, usuario inmune.'),

('Bara Bara', 'Cuerpo se divide y flota por el aire.', 'Inmune a cortes.'),

('Gomu Gomu', 'Convierte el cuerpo en goma.', 'Alta elasticidad y resistencia.'),

('Mera Mera', 'Controla y genera fuego.', 'Intangibilidad y ataques de fuego.'),

('Hie Hie', 'Permite manipular el hielo.', 'Congelación instantánea.'),

('Suna Suna', 'Permite controlar arena.', 'Deshidratación y absorción.'),

('Gura Gura', 'Crea terremotos.', 'Poder destructivo masivo.'),

('Pika Pika', 'Movimiento y ataques a la velocidad de la luz.', 'Rapidez y ataques precisos.'),

('Yami Yami', 'Manipula la oscuridad.', 'Atrae todo y anula poderes.'),

('Magu Magu', 'Genera magma.', 'Fuerza destructiva extrema.'),

('Ope Ope', 'Permite realizar cirugías y manipular el entorno.', 'Poder quirúrgico total.'),

('Mochi Mochi', 'Manipula mochi (masa de arroz).', 'Fuerza pegajosa y versátil.'),

('Ito Ito', 'Controla hilos afilados.', 'Manipula objetos y corta.'),

('Tori Tori', 'Transformación en ave.', 'Capacidad de vuelo.'),

('Ushi Ushi', 'Transformación en toro.', 'Gran fuerza física.'),

('Hito Hito', 'Transformación humana.', 'Intelecto mejorado.'),

('Sara Sara', 'Transformación en salamandra.', 'Capacidad anfibia.');



INSERT INTO variacion_zoan (tipo, descripcion) VALUES



('Normal', 'Permite transformarse en animales comunes.'),

('Antigua', 'Permite transformarse en animales prehistóricos.'),

('Mítica', 'Permite transformarse en criaturas mitológicas.'),

('Insecto', 'Permite transformarse en insectos.'),

('Reptil', 'Permite transformarse en reptiles.'),

('Felino', 'Transformación en felinos salvajes.'),

('Canino', 'Transformación en lobos o perros.'),

('Acuático', 'Transformación en criaturas marinas.'),

('Volador', 'Transformación en aves y seres alados.'),

('Mamífero', 'Transformación en mamíferos.'),

('Dinosaurio', 'Transformación en dinosaurios.'),

('Dragón', 'Transformación en dragón mitológico.'),

('Fénix', 'Transformación en ave fénix.'),

('Quimera', 'Combinación de varias criaturas.'),

('Serpiente', 'Transformación en serpientes.');



INSERT INTO ocupacion (nombre, descripcion) VALUES



('Pirata', 'Exploradores del mar que buscan aventuras y tesoros.'),

('Marine', 'Miembros de la fuerza naval del Gobierno Mundial.'),

('Revolucionario', 'Luchan contra el Gobierno Mundial.'),

('Cazarecompensas', 'Capturan criminales por dinero.'),

('Civil', 'Ciudadanos comunes sin afiliación.'),

('Capitán', 'Líder de una tripulación pirata.'),

('Navegante', 'Especialista en rutas marítimas.'),

('Espadachín', 'Experto en combate con espada.'),

('Médico', 'Responsable de la salud de la tripulación.'),

('Carpintero', 'Encargado de construir y reparar el barco.'),

('Cocinero', 'Encargado de la alimentación.'),

('Arqueólogo', 'Estudia civilizaciones antiguas.'),

('Músico', 'Encargado del entretenimiento.'),

('Timónel', 'Guía el barco en altamar.'),

('Ingeniero', 'Encargado de la tecnología.'),

('Guerrero', 'Combatiente fuerte.'),

('Espía', 'Obtiene información secreta.'),

('Asesino', 'Especialista en matar sin ser detectado.'),

('Comandante', 'Oficial de alto rango.'),

('Teniente', 'Oficial subordinado.'),

('Almirante', 'Oficial de máximo rango.'),

('Vicealmirante', 'Oficial de rango alto.'),

('Sargento', 'Mando medio en la Marina.'),

('Recluta', 'Nuevo integrante de la Marina.'),

('Ladrón', 'Especialista en infiltración y robo.'),

('Tirador', 'Experto en armas de fuego.'),

('Artillero', 'Maneja los cañones del barco.'),

('Domador', 'Controla animales salvajes.'),

('Erudito', 'Posee grandes conocimientos.'),

('Bailarín', 'Aporta con espectáculos.'),

('Contador', 'Administra el dinero.'),

('Comunicador', 'Responsable de mensajes y señales.'),

('Mensajero', 'Transporta mensajes o paquetes.'),

('Constructor', 'Edifica estructuras.'),

('Explorador', 'Busca rutas y recursos.'),

('Granadero', 'Especialista en explosivos.'),

('Científico', 'Realiza investigaciones.'),

('Mecánico', 'Repara y mantiene maquinaria.'),

('Mercader', 'Comercia con productos.'),

('Alquimista', 'Mezcla sustancias misteriosas.'),

('Boticario', 'Prepara medicamentos.'),

('Piloto', 'Controla vehículos.'),

('Táctico', 'Diseña estrategias.'),

('Guardian', 'Protege zonas clave.'),

('Saboteador', 'Arruina planes enemigos.'),

('Forjador', 'Crea armas y armaduras.'),

('Domador de dragones', 'Controla dragones.'),

('Buceador', 'Explora bajo el agua.'),

('Grumete', 'Aprendiz de marinero.'),

('Vendedor', 'Intercambia bienes.');

INSERT INTO fruta_diablo (nombre, descripcion, apariencia, fecha_descubrimiento, estado, id_tipo_fruta, id_zoat) VALUES

('Child no Mi 1', 'Lawyer side relationship rule item son mouth.', 'be', '2007-06-14', 'Disponible', 15, 8),

('Everyone no Mi 2', 'Probably positive daughter.', 'drug', '1987-07-04', 'Disponible', 13, NULL),

('Those no Mi 3', 'Whether cell throughout have important.', 'they', '1974-02-02', 'Desconocida', 12, NULL),

('Interesting no Mi 4', 'New top stand civil possible buy accept.', 'individual', '1965-06-26', 'Consumida', 17, NULL),

('Staff no Mi 5', 'Class cold ago program wife son two.', 'impact', '1962-08-18', 'Disponible', 18, NULL),

('Price no Mi 6', 'Series appear east peace up research ready.', 'ground', '2017-04-12', 'Disponible', 3, NULL),

('Rest no Mi 7', 'My wall your I artist big.', 'first', '2004-07-11', 'Desconocida', 15, 5),

('Entire no Mi 8', 'Suggest training resource short message.', 'minute', '2024-09-12', 'Disponible', 7, NULL),

('Environmental no Mi 9', 'Around one force area.', 'face', '1961-11-12', 'Consumida', 8, NULL),

('Serious no Mi 10', 'Site though though.', 'network', '1974-11-09', 'Consumida', 7, NULL),

('Rather no Mi 11', 'Ground lay ready little state budget other.', 'animal', '1998-06-15', 'Disponible', 5, 4),

('Share no Mi 12', 'Hundred require peace process.', 'me', '2019-08-01', 'Consumida', 12, NULL),

('American no Mi 13', 'Claim sometimes their another cup eat.', 'between', '1950-09-17', 'Desconocida', 14, NULL),

('Challenge no Mi 14', 'Political but at watch I.', 'now', '2003-06-02', 'Disponible', 13, NULL),

('Matter no Mi 15', 'Gas lawyer create often economy certainly decade.', 'itself', '1955-12-07', 'Consumida', 18, NULL),

('Wonder no Mi 16', 'Especially writer support success believe direction another west.', 'able', '1982-04-26', 'Consumida', 13, NULL),

('Style no Mi 17', 'Also ago state family I.', 'ready', '1956-04-13', 'Disponible', 4, NULL),

('Discuss no Mi 18', 'Popular rise age beautiful one.', 'game', '2005-11-13', 'Disponible', 1, NULL),

('Along no Mi 19', 'Toward base realize system.', 'throughout', '2020-10-10', 'Desconocida', 13, NULL),

('Charge no Mi 20', 'Through about same region.', 'movement', '1999-05-04', 'Disponible', 19, NULL),

('Contain no Mi 21', 'Him land defense claim successful near.', 'experience', '1955-05-10', 'Disponible', 7, NULL),

('Process no Mi 22', 'Plan carry once once book feeling tell.', 'particular', '1975-10-04', 'Disponible', 1, NULL),

('Anyone no Mi 23', 'Sound involve goal whose attorney traditional.', 'keep', '1948-02-12', 'Desconocida', 8, NULL),

('Others no Mi 24', 'Lose ready family pull.', 'one', '2022-07-08', 'Consumida', 13, NULL),

('Think no Mi 25', 'Cell serve once color.', 'help', '2022-05-21', 'Disponible', 20, 9),

('Hundred no Mi 26', 'Position machine follow pull.', 'very', '2009-08-20', 'Disponible', 20, 4),

('Who no Mi 27', 'Dinner shoulder up director trip.', 'down', '2014-05-06', 'Desconocida', 20, 13),

('Budget no Mi 28', 'Become light those say glass local manage.', 'weight', '2014-04-19', 'Desconocida', 10, 12),

('Per no Mi 29', 'Ahead moment white short read.', 'among', '2024-02-09', 'Desconocida', 11, NULL),

('Second no Mi 30', 'Leg reason box happen fly.', 'product', '1986-03-26', 'Desconocida', 11, NULL),

('Body no Mi 31', 'Figure term join per for.', 'close', '1992-02-11', 'Desconocida', 12, NULL),

('Picture no Mi 32', 'Check court interest because page fire check book.', 'word', '1947-07-26', 'Consumida', 13, NULL),

('Democratic no Mi 33', 'Class sea such among my window account.', 'modern', '1953-08-30', 'Disponible', 4, NULL),

('Large no Mi 34', 'Choice job day effect well hundred.', 'where', '1998-09-26', 'Consumida', 14, NULL),

('Ever no Mi 35', 'Agree entire task compare product behavior.', 'he', '1961-09-08', 'Consumida', 8, NULL),

('Condition no Mi 36', 'Line degree product draw we letter front enter.', 'pick', '1952-02-13', 'Desconocida', 14, NULL),

('Street no Mi 37', 'Green upon election ok.', 'parent', '1984-09-02', 'Desconocida', 16, NULL),

('None no Mi 38', 'Hair church call contain manage hundred.', 'issue', '1978-12-31', 'Desconocida', 9, NULL),

('South no Mi 39', 'Seat most computer early affect soldier evidence.', 'meeting', '1975-03-23', 'Disponible', 2, NULL),

('Yes no Mi 40', 'Image animal event general gas Republican.', 'baby', '2014-09-08', 'Desconocida', 19, NULL),

('Field no Mi 41', 'Second hear without idea always white wall movement.', 'social', '1958-10-27', 'Consumida', 6, NULL),

('Than no Mi 42', 'Physical whole look everyone show.', 'on', '1951-03-20', 'Disponible', 9, NULL),

('Mission no Mi 43', 'Travel consumer before make president place morning fund.', 'see', '1966-08-03', 'Desconocida', 4, NULL),

('Into no Mi 44', 'Always forward image southern its easy rather.', 'player', '1956-05-02', 'Desconocida', 2, NULL),

('Listen no Mi 45', 'Whole ability interest late responsibility explain.', 'decade', '2006-05-10', 'Desconocida', 8, NULL),

('Middle no Mi 46', 'Suggest by cell state expert across would.', 'very', '1960-06-20', 'Consumida', 17, NULL),

('Spend no Mi 47', 'Whatever central structure shake drive list common.', 'for', '1985-10-15', 'Desconocida', 7, NULL),

('Network no Mi 48', 'His offer sing listen newspaper yet.', 'challenge', '1949-10-11', 'Desconocida', 19, NULL),

('Mrs no Mi 49', 'After into him after.', 'bad', '1975-10-20', 'Consumida', 11, NULL),

('Religious no Mi 50', 'Environment mind clear past various sell.', 'hit', '1992-09-17', 'Consumida', 1, NULL),

('Hard no Mi 51', 'Everything instead world hit fact myself.', 'provide', '1996-02-13', 'Desconocida', 4, NULL),

('Son no Mi 52', 'In just word manager set grow action.', 'include', '1962-02-09', 'Consumida', 7, NULL),

('Nearly no Mi 53', 'Think product establish always begin special.', 'rock', '2006-09-12', 'Desconocida', 4, NULL),

('Study no Mi 54', 'Total trial star time give you.', 'walk', '1972-11-06', 'Desconocida', 20, 4),

('Tax no Mi 55', 'Second off million use expert population.', 'world', '1988-01-05', 'Disponible', 13, NULL),

('Evidence no Mi 56', 'Church financial kind medical.', 'early', '1977-03-24', 'Desconocida', 4, NULL),

('Effort no Mi 57', 'Chair likely center good common plan.', 'pressure', '1976-08-29', 'Consumida', 5, 10),

('Senior no Mi 58', 'Expect trade feel no operation.', 'particular', '1991-06-24', 'Desconocida', 16, NULL),

('Allow no Mi 59', 'Performance night loss exist impact same.', 'security', '2016-11-10', 'Desconocida', 2, NULL),

('Interview no Mi 60', 'Yeah foreign everybody young.', 'last', '1961-08-02', 'Desconocida', 15, 3),

('Particularly no Mi 61', 'Than by budget level.', 'deep', '1968-09-29', 'Disponible', 16, NULL),

('Assume no Mi 62', 'Republican nearly lawyer police figure how friend.', 'quickly', '2005-07-25', 'Disponible', 7, NULL),

('Low no Mi 63', 'Factor role then now road chance agent law.', 'because', '1988-08-01', 'Disponible', 6, NULL),

('Admit no Mi 64', 'Alone nation never black simply better throughout.', 'style', '2004-11-21', 'Disponible', 2, NULL),

('Shake no Mi 65', 'Task factor particularly against seek consider anyone.', 'soon', '2002-06-04', 'Disponible', 7, NULL),

('Ask no Mi 66', 'Place full else security begin thousand the.', 'lose', '2010-06-10', 'Desconocida', 3, NULL),

('Population no Mi 67', 'Report hospital network sell act.', 'far', '1970-08-04', 'Disponible', 9, NULL),

('Risk no Mi 68', 'Start control indeed today professor deep.', 'discuss', '1955-02-13', 'Disponible', 13, NULL),

('Chance no Mi 69', 'Meeting nearly size beyond operation trade explain popular.', 'wrong', '1971-06-25', 'Disponible', 18, NULL),

('Billion no Mi 70', 'Old former appear general along quality.', 'physical', '1988-04-16', 'Consumida', 16, NULL),

('Doctor no Mi 71', 'School next artist ten nearly let.', 'together', '1996-08-25', 'Consumida', 11, NULL),

('Business no Mi 72', 'Alone program respond.', 'next', '1981-10-25', 'Desconocida', 15, 9),

('Open no Mi 73', 'Run meeting close son answer collection number.', 'hold', '2021-09-29', 'Disponible', 20, 10),

('View no Mi 74', 'Feel man country.', 'threat', '1953-08-10', 'Consumida', 14, NULL),

('Herself no Mi 75', 'Response save last boy who.', 'although', '2011-11-20', 'Disponible', 7, NULL),

('That no Mi 76', 'Size leg recent magazine.', 'some', '1980-01-22', 'Consumida', 3, NULL),

('Resource no Mi 77', 'At he couple whose music wrong decision.', 'reveal', '2016-03-25', 'Desconocida', 9, NULL),

('All no Mi 78', 'Support answer human summer personal standard.', 'among', '1980-08-31', 'Consumida', 9, NULL),

('Song no Mi 79', 'Or half bag fire company travel.', 'administration', '2022-12-03', 'Desconocida', 4, NULL),

('Message no Mi 80', 'Benefit quickly affect her mother.', 'provide', '1983-10-12', 'Disponible', 8, NULL),

('Thousand no Mi 81', 'Our school page yourself.', 'tax', '1978-10-10', 'Disponible', 13, NULL),

('Able no Mi 82', 'Policy behind thus statement paper join reach.', 'fine', '1977-05-10', 'Consumida', 1, NULL),

('Perform no Mi 83', 'Environmental fire after.', 'financial', '1993-03-28', 'Consumida', 10, 1),

('Film no Mi 84', 'Town maintain politics car ball tonight reveal.', 'write', '2003-03-10', 'Disponible', 18, NULL),

('Method no Mi 85', 'Act place my team.', 'American', '1977-08-11', 'Consumida', 8, NULL),

('Whom no Mi 86', 'Tonight rather middle second what executive room camera.', 'I', '1999-04-19', 'Consumida', 1, NULL),

('Never no Mi 87', 'Physical debate in cold.', 'high', '1997-07-15', 'Desconocida', 3, NULL),

('Summer no Mi 88', 'Dream forget own couple think.', 'garden', '1986-05-30', 'Disponible', 10, 11),

('Conference no Mi 89', 'Instead buy magazine sure coach list.', 'very', '1992-06-13', 'Desconocida', 1, NULL),

('They no Mi 90', 'Season magazine white can anything.', 'within', '2019-04-18', 'Disponible', 19, NULL),

('Southern no Mi 91', 'End pattern according Congress mean paper month.', 'open', '1956-02-09', 'Consumida', 11, NULL),

('Care no Mi 92', 'Know public resource.', 'life', '2005-03-31', 'Desconocida', 15, 1),

('Value no Mi 93', 'Determine environmental field challenge out once.', 'sea', '2017-06-20', 'Desconocida', 6, NULL),

('Behind no Mi 94', 'Remain help role boy new.', 'cost', '1985-03-02', 'Disponible', 1, NULL),

('Brother no Mi 95', 'Expect condition us my record.', 'vote', '2021-04-03', 'Desconocida', 20, 14),

('Reflect no Mi 96', 'News improve shake become event.', 'or', '1998-11-21', 'Consumida', 18, NULL),

('Yet no Mi 97', 'Personal manager activity someone economy during economic.', 'help', '1971-09-06', 'Disponible', 6, NULL),

('Professional no Mi 98', 'Buy apply ever personal light drop.', 'force', '1970-08-16', 'Desconocida', 1, NULL),

('Boy no Mi 99', 'Baby course design color thus.', 'company', '1950-02-20', 'Desconocida', 1, NULL),

('Training no Mi 100', 'Beat benefit listen important they family need could.', 'both', '1976-03-19', 'Desconocida', 11, NULL),

('Approach no Mi 101', 'Another always just listen style response Democrat.', 'apply', '1964-05-27', 'Desconocida', 13, NULL),

('Color no Mi 102', 'Create sister challenge best foot kitchen hundred.', 'simply', '1989-01-17', 'Disponible', 13, NULL),

('Sound no Mi 103', 'Discussion pass treatment probably hit room think.', 'land', '1989-10-31', 'Consumida', 15, 4),

('Draw no Mi 104', 'Girl road daughter.', 'development', '1950-07-09', 'Disponible', 6, NULL),

('Another no Mi 105', 'Job everybody real decide.', 'watch', '1970-01-25', 'Desconocida', 19, NULL),

('Available no Mi 106', 'Especially public apply short deal present leader.', 'receive', '2000-08-03', 'Desconocida', 9, NULL),

('Meet no Mi 107', 'Mind suggest game.', 'save', '1951-07-22', 'Disponible', 15, 11),

('Kitchen no Mi 108', 'Care former remember night allow exist.', 'finish', '1997-03-28', 'Desconocida', 5, 7),

('Quite no Mi 109', 'System traditional conference guess feeling keep boy.', 'speech', '1997-06-19', 'Desconocida', 19, NULL),

('Fill no Mi 110', 'Edge north car allow.', 'chair', '1987-04-21', 'Desconocida', 4, NULL),

('Single no Mi 111', 'Issue culture itself along.', 'customer', '1980-05-08', 'Desconocida', 10, 3),

('Within no Mi 112', 'Board official shoulder maybe.', 'federal', '1957-09-13', 'Disponible', 19, NULL),

('Outside no Mi 113', 'Yeah enough score much would ever summer air.', 'yard', '1952-02-25', 'Desconocida', 8, NULL),

('Get no Mi 114', 'However quite place pass radio.', 'mother', '1953-05-20', 'Disponible', 13, NULL),

('Artist no Mi 115', 'Stop worry recently no loss open skin.', 'speak', '2003-09-14', 'Consumida', 14, NULL),

('Million no Mi 116', 'Economy team always usually politics trouble.', 'boy', '2012-03-28', 'Desconocida', 12, NULL),

('Camera no Mi 117', 'Exist before area plan main result.', 'wonder', '1970-03-10', 'Disponible', 3, NULL),

('Part no Mi 118', 'International third read arm.', 'expect', '1997-12-10', 'Disponible', 15, 7),

('Policy no Mi 119', 'Develop yes any.', 'we', '1997-10-09', 'Disponible', 19, NULL),

('Respond no Mi 120', 'Commercial building anything talk senior relationship.', 'party', '1954-01-01', 'Disponible', 16, NULL),

('Sign no Mi 121', 'Doctor environment many appear.', 'similar', '1988-09-03', 'Disponible', 3, NULL),

('Either no Mi 122', 'Pull very eat sing strategy.', 'ok', '2005-08-29', 'Consumida', 4, NULL),

('World no Mi 123', 'Marriage investment some.', 'source', '1993-07-20', 'Desconocida', 19, NULL),

('Glass no Mi 124', 'Section realize source occur watch country positive loss.', 'from', '1980-05-15', 'Disponible', 5, 13),

('Room no Mi 125', 'Race risk us.', 'fire', '1965-05-11', 'Desconocida', 19, NULL),

('Half no Mi 126', 'And special sell.', 'involve', '1997-01-15', 'Disponible', 6, NULL),

('Citizen no Mi 127', 'Wife science child project wind analysis my.', 'detail', '2004-12-01', 'Consumida', 19, NULL),

('Office no Mi 128', 'Color citizen baby training measure traditional.', 'factor', '1987-11-10', 'Consumida', 4, NULL),

('Father no Mi 129', 'Animal together form enter too cover.', 'whether', '2001-04-20', 'Desconocida', 16, NULL),

('Simply no Mi 130', 'Entire ten step include.', 'discuss', '1950-09-30', 'Consumida', 4, NULL),

('Writer no Mi 131', 'Television activity letter outside police.', 'world', '2016-12-12', 'Desconocida', 16, NULL),

('Pretty no Mi 132', 'Board join use.', 'water', '1984-12-20', 'Consumida', 8, NULL),

('Despite no Mi 133', 'Religious particularly against spend town third woman.', 'simple', '1974-08-19', 'Desconocida', 12, NULL),

('Arrive no Mi 134', 'Cell ball fire bit.', 'this', '2021-03-08', 'Disponible', 2, NULL),

('Cultural no Mi 135', 'Catch create happen actually available reality scientist group.', 'group', '1987-08-25', 'Disponible', 8, NULL),

('When no Mi 136', 'Side partner blood hope very behind.', 'finish', '1946-06-20', 'Desconocida', 4, NULL),

('On no Mi 137', 'Music tell write responsibility.', 'moment', '1972-06-23', 'Desconocida', 3, NULL),

('Woman no Mi 138', 'Less her bit wish person.', 'argue', '1969-09-12', 'Disponible', 16, NULL),

('Know no Mi 139', 'Account drug have PM skill laugh.', 'century', '1976-07-03', 'Desconocida', 2, NULL),

('Goal no Mi 140', 'Business table issue least response player.', 'more', '2000-03-28', 'Desconocida', 16, NULL),

('Agent no Mi 141', 'Study check away gun relationship black cell picture.', 'may', '1963-01-10', 'Consumida', 17, NULL),

('Fish no Mi 142', 'Assume family type morning several.', 'treat', '1951-04-18', 'Consumida', 7, NULL),

('True no Mi 143', 'Different everyone true your.', 'kind', '2017-12-20', 'Consumida', 2, NULL),

('Heavy no Mi 144', 'Three skill ball.', 'practice', '1993-09-13', 'Desconocida', 17, NULL),

('Why no Mi 145', 'Pass enough country tonight.', 'project', '1959-07-23', 'Desconocida', 9, NULL),

('Director no Mi 146', 'Throw team my glass threat.', 'wrong', '1961-08-25', 'Disponible', 20, 9),

('Story no Mi 147', 'Lead between indeed seem democratic he front.', 'station', '2023-11-30', 'Desconocida', 4, NULL),

('Forward no Mi 148', 'Not even war.', 'degree', '1998-10-19', 'Desconocida', 6, NULL),

('Deep no Mi 149', 'Money hour and what.', 'toward', '1984-03-27', 'Disponible', 19, NULL),

('Morning no Mi 150', 'At conference best under heart customer next.', 'site', '1979-01-01', 'Desconocida', 8, NULL);

INSERT INTO habilidad (nombre, descripcion) VALUES

('Habilidad Especial 1', 'Action left partner serious risk.'),

('Habilidad Especial 2', 'Support middle authority successful class.'),

('Habilidad Especial 3', 'Provide itself list professor green during building program huge religious.'),

('Habilidad Especial 4', 'Key allow state blood force today type current.'),

('Habilidad Especial 5', 'Quickly most take nothing thousand among whom environmental than front.'),

('Habilidad Especial 6', 'Artist allow drug opportunity book involve size network happy rich.'),

('Habilidad Especial 7', 'Trip important section respond floor create radio.'),

('Habilidad Especial 8', 'Rate son future campaign own.'),

('Habilidad Especial 9', 'Again trial him international bed ability.'),

('Habilidad Especial 10', 'Should mission time huge pull term mean business.'),

('Habilidad Especial 11', 'Between cover rather decide especially.'),

('Habilidad Especial 12', 'Apply ever education activity receive someone foot.'),

('Habilidad Especial 13', 'Take personal fight small fund worry toward event.'),

('Habilidad Especial 14', 'Behind family he thousand rich program second magazine exist century.'),

('Habilidad Especial 15', 'Herself individual day work create address fund during experience artist subject.'),

('Habilidad Especial 16', 'Argue show rather child government could including state town.'),

('Habilidad Especial 17', 'Need camera commercial require policy.'),

('Habilidad Especial 18', 'Friend them fly class customer to standard appear live practice.'),

('Habilidad Especial 19', 'Blue card local style question bar everyone you almost.'),

('Habilidad Especial 20', 'Position night most score yourself.'),

('Habilidad Especial 21', 'Thing figure imagine fine material pattern.'),

('Habilidad Especial 22', 'Fine less though off support during.'),

('Habilidad Especial 23', 'Analysis management rule pretty sell oil.'),

('Habilidad Especial 24', 'Weight test base try career political to even possible.'),

('Habilidad Especial 25', 'Reason until by success agreement talk perform poor magazine face.'),

('Habilidad Especial 26', 'Bit leader minute force officer could.'),

('Habilidad Especial 27', 'Quality our certain defense success.'),

('Habilidad Especial 28', 'Happy point yet government learn six bring treat usually sure house.'),

('Habilidad Especial 29', 'Property size fear team.'),

('Habilidad Especial 30', 'Believe attack sit air four beat staff argue station.'),

('Habilidad Especial 31', 'However dream nature nature leader.'),

('Habilidad Especial 32', 'Find shoulder should fund.'),

('Habilidad Especial 33', 'Success recently care including available get over rise team.'),

('Habilidad Especial 34', 'Speak trade major light yourself interest book may down season.'),

('Habilidad Especial 35', 'Investment first media affect time.'),

('Habilidad Especial 36', 'Serve long child whose available star play go toward picture.'),

('Habilidad Especial 37', 'People leader throw specific.'),

('Habilidad Especial 38', 'Environment forget culture if bed people.'),

('Habilidad Especial 39', 'Girl year easy report case leave any.'),

('Habilidad Especial 40', 'Pay six face tend production score.'),

('Habilidad Especial 41', 'Follow put nice environment sign sing from sometimes guess.'),

('Habilidad Especial 42', 'Week discover suddenly particular government hand.'),

('Habilidad Especial 43', 'Light cell population wonder them pressure defense usually interest may.'),

('Habilidad Especial 44', 'Get heavy sit production simply food decide strategy easy run.'),

('Habilidad Especial 45', 'Floor national election partner beat get opportunity quite old official.'),

('Habilidad Especial 46', 'Player ever region western offer include often executive strong someone.'),

('Habilidad Especial 47', 'Drug especially effect foot front least market land.'),

('Habilidad Especial 48', 'Often behind nearly realize age even term network determine fish.'),

('Habilidad Especial 49', 'Pretty region type degree out suddenly outside other TV interest.'),

('Habilidad Especial 50', 'Challenge director lose huge no seven summer past rest.'),

('Habilidad Especial 51', 'Phone use piece western low during ten imagine help.'),

('Habilidad Especial 52', 'Structure notice customer woman single four what threat yes news.'),

('Habilidad Especial 53', 'Government building rich successful eye discuss adult good where.'),

('Habilidad Especial 54', 'Now black team rate standard dream six.'),

('Habilidad Especial 55', 'Either career seven child occur.'),

('Habilidad Especial 56', 'Record prevent walk election writer Mrs agree.'),

('Habilidad Especial 57', 'Model change when outside agent television low set community response.'),

('Habilidad Especial 58', 'Company sign company carry so anything ever.'),

('Habilidad Especial 59', 'Hear office with political treatment president school something street operation.'),

('Habilidad Especial 60', 'Quality enjoy position these child financial.'),

('Habilidad Especial 61', 'Evening ahead center early ready actually.'),

('Habilidad Especial 62', 'East trouble share worry four kitchen success necessary edge.'),

('Habilidad Especial 63', 'Since seat short white health.'),

('Habilidad Especial 64', 'Yet apply American address share push high million television could.'),

('Habilidad Especial 65', 'Pass rule factor less act employee.'),

('Habilidad Especial 66', 'Start will remember hard trip fly.'),

('Habilidad Especial 67', 'Read later vote wall think although however trip police magazine Mrs.'),

('Habilidad Especial 68', 'Very hospital your myself woman nor wear see whether Mr.'),

('Habilidad Especial 69', 'Job daughter side drive yeah late protect part very.'),

('Habilidad Especial 70', 'Environmental some three weight sing culture them experience.'),

('Habilidad Especial 71', 'Less strategy weight probably ball.'),

('Habilidad Especial 72', 'Live development bed seek phone become specific day through.'),

('Habilidad Especial 73', 'Life bed it personal region much education from budget challenge brother.'),

('Habilidad Especial 74', 'Science series down direction material set focus seven their.'),

('Habilidad Especial 75', 'Against question not should party.'),

('Habilidad Especial 76', 'But operation every success newspaper there.'),

('Habilidad Especial 77', 'Against others discover current help might protect investment push.'),

('Habilidad Especial 78', 'Lead effort political wait lead American former draw require commercial.'),

('Habilidad Especial 79', 'Move final a choice deal.'),

('Habilidad Especial 80', 'Service throw hair for gun book.'),

('Habilidad Especial 81', 'Plant friend glass if high.'),

('Habilidad Especial 82', 'Back form thousand yard human write religious look language.'),

('Habilidad Especial 83', 'Continue pick million risk we range receive may wish.'),

('Habilidad Especial 84', 'Billion specific box wrong night network next plan.'),

('Habilidad Especial 85', 'Yard energy many person thing girl part school recently sometimes.'),

('Habilidad Especial 86', 'Plan grow fear all instead nation thus common ahead.'),

('Habilidad Especial 87', 'Subject lay much shoulder lead player show garden.'),

('Habilidad Especial 88', 'Operation fire if age sort anyone machine born.'),

('Habilidad Especial 89', 'Question hand consider more onto.'),

('Habilidad Especial 90', 'Mention pattern same close skin professor race fast.'),

('Habilidad Especial 91', 'Born sport trip everybody since always stock week.'),

('Habilidad Especial 92', 'Ask represent ahead without yes all lawyer.'),

('Habilidad Especial 93', 'It set everybody left star list.'),

('Habilidad Especial 94', 'Team participant pass education lot.'),

('Habilidad Especial 95', 'Word hit series relate green approach.'),

('Habilidad Especial 96', 'Choice seem until evening rule different end ok example.'),

('Habilidad Especial 97', 'Political wear ground back foot send door house.'),

('Habilidad Especial 98', 'Should firm only south summer law.'),

('Habilidad Especial 99', 'Language true special important wind various really nearly family.'),

('Habilidad Especial 100', 'Director whose line although look.');

INSERT INTO fruta_habilidad (id_fruta, id_habilidad, nivel_manifestacion) VALUES

(119, 89, 'Básico'),

(30, 29, 'Avanzado'),

(83, 16, 'Avanzado'),

(27, 40, 'Avanzado'),

(113, 80, 'Intermedio'),

(84, 12, 'Intermedio'),

(88, 77, 'Intermedio'),

(50, 92, 'Despertado'),

(21, 12, 'Avanzado'),

(53, 41, 'Avanzado'),

(40, 86, 'Básico'),

(114, 97, 'Básico'),

(53, 67, 'Intermedio'),

(121, 96, 'Básico'),

(139, 57, 'Avanzado'),

(2, 11, 'Despertado'),

(16, 55, 'Despertado'),

(40, 25, 'Despertado'),

(47, 27, 'Avanzado'),

(65, 28, 'Avanzado'),

(103, 51, 'Avanzado'),

(86, 4, 'Avanzado'),

(62, 67, 'Intermedio'),

(14, 85, 'Despertado'),

(24, 93, 'Avanzado'),

(31, 22, 'Despertado'),

(95, 28, 'Intermedio'),

(104, 3, 'Despertado'),

(87, 6, 'Avanzado'),

(128, 77, 'Básico'),

(20, 46, 'Básico'),

(67, 100, 'Despertado'),

(148, 80, 'Avanzado'),

(137, 51, 'Avanzado'),

(84, 21, 'Intermedio'),

(48, 44, 'Despertado'),

(103, 80, 'Despertado'),

(64, 98, 'Despertado'),

(25, 68, 'Intermedio'),

(46, 10, 'Intermedio'),

(21, 3, 'Avanzado'),

(124, 29, 'Avanzado'),

(105, 89, 'Básico'),

(70, 61, 'Avanzado'),

(88, 92, 'Básico'),

(131, 37, 'Intermedio'),

(96, 40, 'Intermedio'),

(104, 56, 'Básico'),

(2, 35, 'Básico'),

(138, 93, 'Básico'),

(71, 81, 'Despertado'),

(123, 69, 'Avanzado'),

(142, 88, 'Básico'),

(127, 88, 'Avanzado'),

(47, 12, 'Básico'),

(126, 79, 'Intermedio'),

(136, 11, 'Avanzado'),

(40, 52, 'Básico'),

(102, 43, 'Despertado'),

(46, 73, 'Despertado'),

(64, 88, 'Básico'),

(116, 48, 'Básico'),

(74, 55, 'Básico'),

(116, 92, 'Avanzado'),

(51, 58, 'Despertado'),

(136, 17, 'Despertado'),

(37, 27, 'Avanzado'),

(100, 2, 'Básico'),

(103, 15, 'Intermedio'),

(37, 98, 'Intermedio'),

(122, 23, 'Despertado'),

(80, 38, 'Despertado'),

(99, 50, 'Despertado'),

(30, 72, 'Intermedio'),

(9, 66, 'Básico'),

(6, 66, 'Despertado'),

(100, 49, 'Intermedio'),

(6, 15, 'Básico'),

(58, 86, 'Despertado'),

(69, 40, 'Intermedio'),

(123, 79, 'Avanzado'),

(90, 45, 'Despertado'),

(72, 10, 'Despertado'),

(60, 50, 'Básico'),

(75, 70, 'Básico'),

(96, 98, 'Despertado'),

(106, 33, 'Despertado'),

(36, 90, 'Despertado'),

(92, 38, 'Básico'),

(20, 51, 'Básico'),

(134, 52, 'Intermedio'),

(42, 35, 'Básico'),

(11, 91, 'Básico'),

(136, 89, 'Despertado'),

(89, 4, 'Avanzado'),

(52, 84, 'Avanzado'),

(63, 74, 'Avanzado'),

(133, 80, 'Avanzado'),

(81, 83, 'Avanzado'),

(81, 34, 'Básico');

INSERT INTO personaje (nombre, apodo, fecha_nacimiento, sexo, estado, id_ocupacion) VALUES

('Wesley Wilcox', 'thought', '2005-10-23', 'M', 'Desconocido', 20),

('Mr. Joshua Greene', 'shake', '2007-03-25', 'F', 'Desconocido', 41),

('Jennifer Shaw', 'ago', '1985-09-22', 'M', 'Vivo', 16),

('Sylvia Mendez', 'call', '1997-10-21', 'F', 'Vivo', 26),

('David Hardy', 'six', '2006-07-12', 'F', 'Muerto', 10),

('Joshua Ortega', 'wait', '2002-01-12', 'F', 'Muerto', 43),

('Jonathan Bell', 'find', '1991-03-14', 'M', 'Desconocido', 41),

('Rebecca Hampton', 'pick', '1992-01-30', 'M', 'Desconocido', 15),

('David Rowe', 'property', '1996-12-22', 'F', 'Muerto', 32),

('Andrew Alexander', 'down', '2001-11-17', 'F', 'Desconocido', 41),

('Peter Ramos', 'party', '2009-02-12', 'F', 'Desconocido', 22),

('Brian Beck', 'similar', '2004-02-07', 'M', 'Muerto', 40),

('Mario Hernandez', 'matter', '1990-05-16', 'F', 'Desconocido', 28),

('Joseph Shepard', 'capital', '1995-09-06', 'F', 'Muerto', 34),

('Douglas Perez', 'yard', '1989-10-13', 'F', 'Desconocido', 48),

('Terry Valentine', 'deep', '1995-10-18', 'M', 'Desconocido', 34),

('Michael Byrd', 'now', '1994-10-09', 'F', 'Desconocido', 10),

('Elizabeth Miller', 'see', '1990-08-04', 'F', 'Desconocido', 18),

('Gloria Sparks', 'indeed', '2000-02-26', 'F', 'Muerto', 28),

('Gary Robinson', 'table', '2009-09-28', 'M', 'Desconocido', 12),

('Mariah Moses', 'leader', '1987-08-31', 'M', 'Desconocido', 8),

('Tracy Franklin', 'I', '2007-06-19', 'M', 'Muerto', 10),

('Dana Patel DDS', 'rather', '1989-04-04', 'M', 'Vivo', 4),

('Thomas Greene', 'include', '1995-07-15', 'F', 'Muerto', 46),

('Michelle Collins', 'may', '1986-09-07', 'F', 'Vivo', 26),

('Barbara Reid', 'day', '1997-10-11', 'M', 'Muerto', 32),

('John Merritt', 'campaign', '2001-04-22', 'F', 'Muerto', 49),

('Timothy Drake', 'president', '1996-08-03', 'F', 'Desconocido', 47),

('Curtis Lewis', 'buy', '2007-07-07', 'M', 'Desconocido', 50),

('Anthony Garcia', 'away', '2002-04-07', 'M', 'Vivo', 2),

('Heather Hill', 'clear', '1997-06-15', 'F', 'Desconocido', 6),

('Kendra Campbell', 'accept', '2001-07-10', 'F', 'Vivo', 37),

('Charles Moore', 'manager', '2008-09-18', 'M', 'Desconocido', 35),

('Tara Edwards', 'continue', '1998-10-03', 'M', 'Desconocido', 50),

('Jamie Hansen', 'play', '1998-10-15', 'M', 'Vivo', 23),

('Clinton Johnson', 'can', '1991-07-11', 'F', 'Desconocido', 36),

('Michelle Simon', 'analysis', '2000-11-19', 'M', 'Muerto', 1),

('Daniel Costa', 'light', '2007-04-04', 'F', 'Vivo', 30),

('Kara Todd', 'man', '1994-06-19', 'M', 'Desconocido', 4),

('Juan Skinner', 'energy', '1989-12-28', 'F', 'Vivo', 48),

('Dr. Sean Brown', 'join', '1995-06-09', 'F', 'Muerto', 48),

('Matthew Stewart', 'my', '1994-06-15', 'F', 'Vivo', 4),

('Gregory Webb', 'unit', '2005-01-28', 'F', 'Muerto', 40),

('Matthew Lee', 'somebody', '1996-07-12', 'F', 'Desconocido', 15),

('Anthony Novak', 'situation', '2006-09-26', 'F', 'Vivo', 36),

('Jon Hood', 'get', '1994-08-10', 'F', 'Desconocido', 1),

('Kimberly Griffith', 'early', '1987-02-22', 'M', 'Muerto', 12),

('Danielle Smith DVM', 'produce', '1997-08-17', 'F', 'Vivo', 12),

('Casey Estrada', 'reduce', '2008-09-09', 'F', 'Vivo', 43),

('Dana Anderson', 'believe', '2005-06-18', 'M', 'Muerto', 15),

('Andre Keith', 'chance', '2007-06-21', 'M', 'Vivo', 41),

('Scott Fitzgerald', 'important', '1994-12-13', 'M', 'Desconocido', 22),

('Timothy Hernandez DDS', 'particularly', '2008-04-19', 'M', 'Desconocido', 46),

('Travis Alexander', 'not', '2007-05-21', 'F', 'Desconocido', 42),

('Heather Shepherd', 'end', '1996-01-09', 'M', 'Vivo', 45),

('William Townsend', 'sit', '1987-03-26', 'F', 'Desconocido', 22),

('Richard Alvarez', 'change', '1995-03-10', 'M', 'Muerto', 26),

('Anthony Walsh', 'true', '1988-08-20', 'M', 'Desconocido', 33),

('Bob Jones', 'special', '1986-09-03', 'F', 'Vivo', 48),

('William Edwards', 'push', '2001-10-08', 'F', 'Desconocido', 20),

('Joshua Steele', 'new', '2006-10-14', 'M', 'Vivo', 36),

('Alexander Hartman', 'claim', '2004-08-17', 'F', 'Muerto', 8),

('Zachary Garcia', 'forget', '1994-05-04', 'M', 'Vivo', 22),

('Aaron Medina', 'Mr', '1987-04-27', 'F', 'Desconocido', 50),

('Joe Herrera MD', 'consider', '1999-04-25', 'M', 'Muerto', 4),

('David Marquez', 'so', '2001-03-27', 'M', 'Vivo', 37),

('Grant Rice', 'performance', '1992-03-23', 'M', 'Muerto', 36),

('Michael Barber', 'interview', '2006-11-02', 'M', 'Muerto', 34),

('Megan Patterson', 'easy', '1990-08-25', 'F', 'Desconocido', 13),

('Gary Barnett', 'language', '2005-09-27', 'M', 'Muerto', 15),

('Nathan Edwards', 'play', '2009-08-23', 'M', 'Muerto', 7),

('Taylor Parker', 'believe', '1992-10-02', 'M', 'Muerto', 41),

('Michael Gregory', 'similar', '1987-10-09', 'M', 'Muerto', 11),

('Elizabeth Foley DDS', 'tough', '1995-02-20', 'F', 'Muerto', 29),

('Robert Ramirez', 'official', '2005-09-19', 'F', 'Muerto', 38),

('Christopher Mcfarland', 'fact', '2001-01-03', 'F', 'Desconocido', 32),

('Alejandra Lucero', 'step', '1997-11-24', 'M', 'Muerto', 24),

('Calvin Le', 'behavior', '1992-05-07', 'F', 'Vivo', 7),

('Mitchell Bates', 'not', '2005-03-12', 'M', 'Vivo', 44),

('Carlos Mathis', 'hold', '1995-05-02', 'M', 'Muerto', 13),

('Jaime Ayala', 'painting', '1999-08-30', 'M', 'Desconocido', 26),

('Michael Greene', 'around', '1986-04-19', 'F', 'Desconocido', 34),

('Jason Walsh', 'enjoy', '1998-10-25', 'M', 'Muerto', 49),

('Jason Browning', 'event', '1995-03-19', 'F', 'Desconocido', 24),

('Charles Clark', 'hour', '1992-01-06', 'M', 'Vivo', 3),

('Kyle Anderson', 'if', '2001-09-02', 'F', 'Desconocido', 12),

('Melissa Chan', 'individual', '1993-10-16', 'F', 'Vivo', 37),

('Christina Williams', 'degree', '1995-10-12', 'F', 'Muerto', 7),

('Peter Clark', 'both', '1989-10-03', 'F', 'Vivo', 41),

('William Warren', 'son', '2009-05-12', 'F', 'Vivo', 35),

('Kyle Parrish', 'main', '2006-11-18', 'M', 'Desconocido', 19),

('Marissa Jones', 'south', '1996-05-05', 'M', 'Desconocido', 7),

('Micheal Hill', 'real', '1989-12-16', 'F', 'Desconocido', 16),

('Selena Harper', 'each', '1991-10-25', 'M', 'Desconocido', 41),

('Kathy Griffin', 'poor', '2007-02-03', 'M', 'Desconocido', 21),

('Stephanie Thomas', 'medical', '1999-11-07', 'M', 'Muerto', 12),

('Heather Vasquez', 'group', '2008-10-17', 'F', 'Desconocido', 16),

('Steven Walker', 'seek', '2002-07-07', 'M', 'Muerto', 25),

('Jeffrey Valentine', 'guess', '2000-07-08', 'F', 'Vivo', 12),

('Anthony Ramirez', 'image', '2007-02-13', 'F', 'Muerto', 19),

('Miranda Turner', 'improve', '2008-08-10', 'F', 'Muerto', 26),

('Kenneth Douglas', 'society', '1989-02-21', 'F', 'Vivo', 33),

('Stanley Mccullough', 'enjoy', '1989-05-29', 'M', 'Vivo', 47),

('Michelle Rojas', 'that', '1997-07-20', 'F', 'Muerto', 32),

('Sheryl Howard', 'would', '1997-12-09', 'M', 'Vivo', 12),

('Adam Garcia', 'speech', '1993-03-30', 'M', 'Desconocido', 12),

('Zachary Martinez', 'when', '1999-04-30', 'M', 'Vivo', 16),

('Holly Davis', 'college', '1998-09-12', 'M', 'Desconocido', 46),

('William Oneill', 'space', '2008-12-25', 'F', 'Desconocido', 31),

('Donald Frazier', 'down', '1989-10-09', 'F', 'Desconocido', 47),

('Jesse Howard', 'suddenly', '1988-06-06', 'F', 'Vivo', 42),

('Christine Reed', 'professional', '2001-05-25', 'F', 'Muerto', 34),

('Patrick Thompson', 'cut', '1995-01-31', 'M', 'Desconocido', 2),

('Shaun Collier', 'suggest', '2006-06-21', 'M', 'Muerto', 27),

('Mary Rivera', 'trouble', '1990-01-28', 'M', 'Vivo', 24),

('Tasha Sanford', 'appear', '1986-10-01', 'F', 'Vivo', 16),

('Meghan Jensen', 'treat', '1986-04-08', 'F', 'Vivo', 39),

('Monica Marquez', 'course', '1989-12-16', 'M', 'Muerto', 41),

('Cassidy Friedman', 'ready', '2006-10-23', 'F', 'Vivo', 21),

('Richard Robinson', 'my', '1998-09-22', 'F', 'Muerto', 8),

('Angela Berry', 'PM', '2007-07-14', 'F', 'Muerto', 26),

('Jose King', 'writer', '2002-07-09', 'F', 'Vivo', 13),

('Laura Ross MD', 'modern', '2002-04-02', 'F', 'Vivo', 23),

('Donald Harper', 'clear', '2008-02-05', 'M', 'Desconocido', 27),

('Kim Archer', 'center', '1990-10-17', 'F', 'Muerto', 42),

('William Bennett', 'then', '1988-05-20', 'M', 'Desconocido', 4),

('Lee Beasley', 'address', '1988-08-15', 'F', 'Desconocido', 40),

('Patricia Turner', 'body', '1995-04-08', 'M', 'Desconocido', 12),

('Phillip Perez', 'father', '1986-09-19', 'M', 'Vivo', 1),

('Hannah Taylor', 'whose', '1997-08-22', 'F', 'Desconocido', 46),

('Javier Villanueva', 'stage', '1996-12-22', 'F', 'Muerto', 38),

('Lori Garcia', 'development', '2008-03-05', 'F', 'Muerto', 15),

('Jacob Simpson', 'even', '2004-03-09', 'F', 'Desconocido', 20),

('Veronica Daniel', 'see', '1996-08-30', 'F', 'Vivo', 48),

('Carol Burnett', 'city', '1998-10-19', 'M', 'Vivo', 46),

('Lisa Woodard', 'sure', '2000-10-02', 'M', 'Muerto', 39),

('Dr. Michelle Edwards DDS', 'speech', '2010-03-24', 'M', 'Vivo', 9),

('Janet Huffman', 'than', '1996-01-28', 'F', 'Vivo', 41),

('Mikayla Bowman', 'green', '1995-12-22', 'F', 'Vivo', 18),

('Glenn Crawford', 'management', '2000-10-21', 'F', 'Vivo', 12),

('Meghan Levine', 'safe', '1987-02-03', 'M', 'Desconocido', 48),

('Jill Andrews', 'later', '1994-01-13', 'M', 'Desconocido', 48),

('Katherine Salinas', 'stand', '2006-03-26', 'F', 'Desconocido', 49),

('Tina Smith', 'feel', '2010-03-28', 'F', 'Vivo', 35),

('Erin Moore', 'story', '2008-08-21', 'F', 'Vivo', 36),

('Felicia Lopez', 'car', '1988-10-04', 'F', 'Muerto', 33),

('Dale Coleman', 'want', '2000-01-29', 'F', 'Vivo', 1),

('Rebecca Farmer', 'respond', '1986-09-19', 'M', 'Vivo', 17),

('Emma Houston', 'the', '1994-04-26', 'M', 'Desconocido', 16),

('Anthony Powers', 'meet', '2007-11-04', 'M', 'Muerto', 13);

INSERT INTO usuario_fruta (id_personaje, id_fruta, episodio) VALUES

(84, 32, 110),

(71, 48, 935),

(121, 149, 496),

(80, 48, 224),

(53, 20, 393),

(56, 78, 349),

(63, 115, 340),

(9, 23, 197),

(55, 122, 839),

(15, 76, 385),

(28, 58, 106),

(123, 12, 82),

(113, 122, 440),

(121, 13, 287),

(42, 141, 398),

(52, 79, 303),

(23, 25, 1075),

(84, 114, 820),

(83, 144, 476),

(133, 59, 844),

(99, 24, 1027),

(109, 84, 464),

(13, 90, 1088),

(43, 53, 1055),

(55, 10, 91),

(27, 112, 567),

(54, 47, 143),

(130, 70, 564),

(52, 14, 596),

(53, 30, 938),

(3, 104, 988),

(7, 134, 622),

(66, 88, 93),

(108, 111, 275),

(120, 85, 603),

(71, 144, 760),

(9, 73, 610),

(98, 132, 935),

(4, 47, 902),

(93, 119, 616),

(37, 113, 237),

(37, 98, 596),

(33, 65, 734),

(145, 23, 271),

(145, 9, 285),

(79, 30, 884),

(104, 51, 892),

(61, 10, 389),

(66, 30, 222),

(82, 149, 983),

(129, 73, 186),

(146, 27, 542),

(71, 139, 610),

(24, 71, 139),

(62, 8, 74),

(13, 85, 463),

(102, 72, 432),

(150, 130, 121),

(16, 133, 410),

(78, 148, 986),

(74, 37, 878),

(126, 83, 515),

(80, 11, 505),

(28, 126, 247),

(90, 73, 186),

(15, 95, 454),

(125, 47, 373),

(110, 68, 883),

(6, 15, 116),

(70, 99, 92),

(57, 145, 101),

(99, 94, 352),

(148, 31, 509),

(13, 132, 547),

(149, 17, 177),

(60, 123, 547),

(101, 127, 108),

(58, 82, 500),

(72, 81, 511),

(90, 142, 907),

(14, 128, 878),

(115, 94, 725),

(85, 45, 959),

(147, 49, 616),

(124, 82, 527),

(12, 40, 612),

(38, 89, 85),

(12, 22, 901),

(105, 98, 307),

(130, 30, 316),

(130, 146, 89),

(44, 139, 427),

(112, 140, 901),

(44, 116, 325),

(20, 130, 567),

(80, 73, 710),

(12, 87, 391),

(85, 68, 20),

(50, 75, 842),

(39, 69, 419);

INSERT INTO historial_usuario (id_personaje, id_fruta, fecha_inicio, fecha_fin, motivo_fin) VALUES

(11, 106, '2017-08-20', '2023-04-20', 'store'),

(57, 11, '2022-06-24', '2024-07-22', 'artist'),

(76, 3, '2019-04-22', '2021-06-30', 'fish'),

(43, 120, '2018-12-06', '2024-12-19', 'return'),

(138, 144, '2021-12-21', '2023-09-13', 'PM'),

(135, 13, '2020-12-30', '2024-09-28', 'leg'),

(28, 82, '2022-10-31', '2024-03-01', 'even'),

(112, 46, '2022-02-12', '2024-09-30', 'personal'),

(75, 54, '2023-01-28', '2023-07-31', 'perhaps'),

(141, 139, '2022-12-13', '2025-01-16', 'national'),

(6, 15, '2020-12-12', '2024-02-26', 'team'),

(29, 57, '2018-04-27', '2021-04-23', 'response'),

(55, 15, '2022-09-02', '2023-11-22', 'firm'),

(29, 36, '2019-10-05', '2020-10-18', 'mouth'),

(75, 21, '2016-07-05', '2020-08-10', 'little'),

(112, 81, '2021-08-23', '2023-12-20', 'program'),

(112, 27, '2016-08-25', '2024-03-20', 'move'),

(43, 143, '2023-03-15', '2024-07-03', 'cell'),

(48, 36, '2018-04-19', '2024-04-26', 'Mr'),

(70, 50, '2016-12-15', '2022-11-29', 'within'),

(95, 4, '2022-07-06', '2022-08-06', 'discuss'),

(19, 125, '2016-04-19', '2019-06-01', 'daughter'),

(92, 87, '2019-12-29', '2022-05-25', 'end'),

(80, 104, '2017-11-10', '2018-09-13', 'can'),

(65, 28, '2023-02-04', '2024-12-02', 'receive'),

(109, 100, '2018-06-21', '2018-10-20', 'start'),

(67, 12, '2021-02-20', '2021-06-14', 'position'),

(25, 77, '2015-11-20', '2022-07-09', 'option'),

(3, 44, '2016-01-04', '2018-12-29', 'believe'),

(142, 26, '2018-12-02', '2024-12-13', 'stuff'),

(139, 38, '2020-07-10', '2021-11-19', 'finish'),

(77, 128, '2022-06-10', '2022-08-12', 'air'),

(51, 80, '2019-01-22', '2024-04-30', 'page'),

(119, 97, '2022-01-24', '2022-07-09', 'affect'),

(17, 27, '2016-08-13', '2025-04-22', 'wear'),

(69, 14, '2021-03-18', '2024-12-24', 'little'),

(46, 108, '2019-02-17', '2019-09-04', 'blood'),

(107, 3, '2020-12-27', '2021-03-12', 'think'),

(63, 48, '2016-03-11', '2021-12-25', 'just'),

(95, 60, '2018-12-22', '2022-08-30', 'heavy'),

(116, 113, '2015-11-19', '2024-11-09', 'best'),

(35, 59, '2020-11-21', '2024-11-28', 'eat'),

(86, 96, '2023-04-25', '2024-03-03', 'what'),

(32, 111, '2017-01-18', '2023-06-15', 'state'),

(118, 129, '2019-10-28', '2020-03-22', 'music'),

(104, 7, '2016-12-05', '2017-03-10', 'family'),

(11, 40, '2021-03-14', '2023-10-17', 'start'),

(20, 72, '2018-10-08', '2021-07-17', 'notice'),

(93, 77, '2017-03-13', '2021-03-22', 'with'),

(17, 28, '2023-03-09', '2024-03-08', 'peace');

INSERT INTO ubicacion (nombre, tipo, region) VALUES

('Ubicacion 1', 'País', 'South Blue'),

('Ubicacion 2', 'Isla', 'South Blue'),

('Ubicacion 3', 'País', 'North Blue'),

('Ubicacion 4', 'País', 'East Blue'),

('Ubicacion 5', 'Mar', 'Grand Line'),

('Ubicacion 6', 'Isla', 'New World'),

('Ubicacion 7', 'País', 'West Blue'),

('Ubicacion 8', 'Mar', 'Grand Line'),

('Ubicacion 9', 'Archipiélago', 'South Blue'),

('Ubicacion 10', 'Mar', 'East Blue'),

('Ubicacion 11', 'Archipiélago', 'East Blue'),

('Ubicacion 12', 'Mar', 'New World'),

('Ubicacion 13', 'Isla', 'Grand Line'),

('Ubicacion 14', 'Isla', 'North Blue'),

('Ubicacion 15', 'País', 'New World'),

('Ubicacion 16', 'Isla', 'West Blue'),

('Ubicacion 17', 'País', 'South Blue'),

('Ubicacion 18', 'Mar', 'New World'),

('Ubicacion 19', 'Archipiélago', 'East Blue'),

('Ubicacion 20', 'Archipiélago', 'South Blue'),

('Ubicacion 21', 'Isla', 'New World'),

('Ubicacion 22', 'Archipiélago', 'South Blue'),

('Ubicacion 23', 'País', 'Grand Line'),

('Ubicacion 24', 'Mar', 'North Blue'),

('Ubicacion 25', 'Mar', 'Grand Line'),

('Ubicacion 26', 'Mar', 'East Blue'),

('Ubicacion 27', 'País', 'North Blue'),

('Ubicacion 28', 'Mar', 'West Blue'),

('Ubicacion 29', 'Archipiélago', 'West Blue'),

('Ubicacion 30', 'Isla', 'Grand Line'),

('Ubicacion 31', 'País', 'South Blue'),

('Ubicacion 32', 'País', 'East Blue'),

('Ubicacion 33', 'País', 'New World'),

('Ubicacion 34', 'Mar', 'Grand Line'),

('Ubicacion 35', 'Isla', 'West Blue'),

('Ubicacion 36', 'País', 'Grand Line'),

('Ubicacion 37', 'Isla', 'North Blue'),

('Ubicacion 38', 'Mar', 'North Blue'),

('Ubicacion 39', 'País', 'East Blue'),

('Ubicacion 40', 'Archipiélago', 'New World'),

('Ubicacion 41', 'País', 'East Blue'),

('Ubicacion 42', 'Isla', 'New World'),

('Ubicacion 43', 'Archipiélago', 'Grand Line'),

('Ubicacion 44', 'Mar', 'New World'),

('Ubicacion 45', 'Isla', 'South Blue'),

('Ubicacion 46', 'Mar', 'East Blue'),

('Ubicacion 47', 'País', 'West Blue'),

('Ubicacion 48', 'Archipiélago', 'New World'),

('Ubicacion 49', 'Archipiélago', 'New World'),

('Ubicacion 50', 'Mar', 'West Blue');

INSERT INTO tripulacion (nombre, bandera, id_capitan, id_ubicacion_base, estado) VALUES

('Tripulacion 1', 'summer', 32, 28, 'Desconocida'),

('Tripulacion 2', 'hour', 102, 46, 'Disuelta'),

('Tripulacion 3', 'deep', 93, 29, 'Activa'),

('Tripulacion 4', 'think', 135, 26, 'Activa'),

('Tripulacion 5', 'wall', 84, 42, 'Activa'),

('Tripulacion 6', 'else', 140, 44, 'Disuelta'),

('Tripulacion 7', 'source', 137, 47, 'Disuelta'),

('Tripulacion 8', 'bill', 146, 42, 'Desconocida'),

('Tripulacion 9', 'impact', 11, 22, 'Disuelta'),

('Tripulacion 10', 'would', 2, 19, 'Disuelta'),

('Tripulacion 11', 'face', 5, 35, 'Activa'),

('Tripulacion 12', 'allow', 9, 23, 'Activa'),

('Tripulacion 13', 'professional', 37, 8, 'Activa'),

('Tripulacion 14', 'likely', 111, 36, 'Desconocida'),

('Tripulacion 15', 'strategy', 95, 2, 'Desconocida'),

('Tripulacion 16', 'heart', 111, 17, 'Disuelta'),

('Tripulacion 17', 'treat', 105, 10, 'Desconocida'),

('Tripulacion 18', 'church', 82, 7, 'Activa'),

('Tripulacion 19', 'tonight', 11, 44, 'Activa'),

('Tripulacion 20', 'fire', 88, 35, 'Activa'),

('Tripulacion 21', 'cup', 99, 39, 'Disuelta'),

('Tripulacion 22', 'middle', 51, 2, 'Activa'),

('Tripulacion 23', 'at', 103, 25, 'Desconocida'),

('Tripulacion 24', 'but', 110, 6, 'Activa'),

('Tripulacion 25', 'let', 1, 23, 'Disuelta'),

('Tripulacion 26', 'much', 25, 34, 'Disuelta'),

('Tripulacion 27', 'quality', 102, 45, 'Desconocida'),

('Tripulacion 28', 'lose', 148, 12, 'Desconocida'),

('Tripulacion 29', 'still', 32, 38, 'Activa'),

('Tripulacion 30', 'every', 26, 8, 'Activa');

INSERT INTO personaje_tripulacion (id_personaje, id_tripulacion, cargo) VALUES

(47, 9, 'Navegante'),

(63, 2, 'Médico'),

(71, 17, 'Navegante'),

(111, 1, 'Espadachín'),

(82, 26, 'Médico'),

(59, 29, 'Espadachín'),

(98, 10, 'Espadachín'),

(87, 25, 'Espadachín'),

(71, 20, 'Navegante'),

(73, 10, 'Capitán'),

(104, 29, 'Espadachín'),

(22, 24, 'Espadachín'),

(99, 10, 'Médico'),

(105, 25, 'Navegante'),

(108, 3, 'Médico'),

(113, 7, 'Navegante'),

(4, 3, 'Espadachín'),

(63, 6, 'Espadachín'),

(120, 3, 'Espadachín'),

(90, 15, 'Espadachín'),

(18, 5, 'Capitán'),

(75, 7, 'Espadachín'),

(99, 27, 'Médico'),

(14, 4, 'Espadachín'),

(33, 17, 'Navegante'),

(22, 21, 'Navegante'),

(21, 11, 'Espadachín'),

(42, 30, 'Capitán'),

(79, 29, 'Navegante'),

(14, 23, 'Médico'),

(47, 17, 'Médico'),

(145, 5, 'Capitán'),

(31, 27, 'Médico'),

(5, 3, 'Capitán'),

(71, 12, 'Capitán'),

(9, 6, 'Médico'),

(133, 18, 'Capitán'),

(136, 18, 'Navegante'),

(125, 5, 'Capitán'),

(78, 14, 'Espadachín'),

(103, 16, 'Espadachín'),

(80, 2, 'Navegante'),

(138, 29, 'Médico'),

(147, 23, 'Médico'),

(43, 2, 'Navegante'),

(127, 24, 'Capitán'),

(111, 19, 'Espadachín'),

(57, 30, 'Capitán'),

(35, 20, 'Capitán'),

(139, 18, 'Espadachín');

INSERT INTO recompensa (id_personaje, cantidad, fecha_emision, motivo, activa) VALUES

(55, 3472295041.02, '2015-07-19', 'Authority word.', true),

(30, 4211356639.35, '2015-01-14', 'Do argue pick.', true),

(125, 3106783518.54, '2012-01-25', 'Drop.', true),

(27, 2630852576.25, '2008-02-25', 'Radio training.', true),

(84, 2490476297.43, '2007-12-01', 'Address town.', false),

(137, 3614442934.03, '2006-09-07', 'Reflect clear run.', true),

(38, 358192927.17, '2016-07-31', 'Me.', true),

(14, 4355648429.72, '2007-05-14', 'Do too benefit.', false),

(75, 3150565900.95, '2018-01-30', 'Art check.', false),

(140, 1770203168.8, '2016-03-02', 'Heart election culture.', false),

(4, 3919802608.33, '2018-12-20', 'Not oil forget.', true),

(67, 4248547663.46, '2020-08-01', 'Perhaps base.', false),

(77, 3818632390.6, '2017-04-27', 'Form indeed.', false),

(116, 835159985.25, '2007-05-06', 'Could program near.', false),

(95, 479130739.86, '2020-02-14', 'Plant throughout.', true),

(86, 3908543168.02, '2007-06-25', 'Time third.', true),

(15, 3191669822.75, '2022-02-22', 'Dark senior.', false),

(102, 3265620882.21, '2005-08-31', 'Defense arm.', true),

(141, 3091333857.28, '2010-06-22', 'Entire article.', true),

(118, 1923847601.53, '2021-01-13', 'Society treat box.', false),

(9, 3822122288.8, '2011-12-28', 'That artist.', false),

(82, 3845310372.54, '2016-11-12', 'Such.', false),

(35, 2293313449.67, '2010-09-06', 'Property somebody.', true),

(84, 166628009.57, '2012-12-16', 'Mr.', true),

(120, 1732146411.27, '2015-12-29', 'Nature trade be or.', true),

(126, 4304182620.04, '2023-10-19', 'Group now.', false),

(109, 2893392536.57, '2022-02-12', 'First season tonight.', false),

(129, 4966979452.36, '2022-08-20', 'Main economy.', true),

(110, 3261991067.54, '2023-08-24', 'Score give.', true),

(130, 4767238244.29, '2021-08-13', 'Dark officer.', false),

(123, 2009228386.5, '2014-06-25', 'Sport they central.', true),

(63, 1161509939.03, '2009-07-23', 'Difficult if buy.', true),

(140, 368788849.62, '2016-05-01', 'Else stage future.', false),

(5, 4525623042.72, '2018-03-15', 'Black character.', false),

(62, 3097127673.45, '2012-12-13', 'Score reduce.', false),

(131, 742550300.38, '2017-05-04', 'Director son.', false),

(30, 986916660.43, '2010-04-13', 'Defense go.', false),

(89, 450459932.22, '2008-05-12', 'Choose understand.', false),

(35, 1073739683.59, '2017-02-03', 'On surface.', true),

(117, 3549077941.18, '2009-03-09', 'Evening manager join.', true),

(51, 2306260945.18, '2024-04-22', 'Five traditional.', true),

(75, 3087769422.67, '2007-12-27', 'Generation best theory.', true),

(119, 3475975191.16, '2009-09-28', 'Cultural measure.', false),

(83, 3712458162.05, '2018-10-13', 'Attorney oil.', false),

(144, 3252090795.71, '2022-05-02', 'Product worry.', false),

(69, 1818371077.05, '2007-08-08', 'Range design than.', false),

(93, 1679893039.73, '2011-03-29', 'Political.', true),

(59, 1350850175.08, '2018-08-10', 'Eye evidence.', true),

(91, 2908979101.99, '2015-05-03', 'Citizen action.', false),

(121, 601432648.24, '2022-05-09', 'Hope particularly.', true);

INSERT INTO debilidad_fruta (id_fruta, tipo, descripcion) VALUES

(37, 'Haki', 'Give along right shake cold.'),

(40, 'Agua', 'Compare article cost light.'),

(13, 'Mar', 'Various gun task debate.'),

(109, 'Mar', 'Both push television.'),

(129, 'Haki', 'Boy fill prove.'),

(89, 'Otra', 'Memory bring black top.'),

(97, 'Kairoseki', 'Class herself without.'),

(83, 'Mar', 'Point study yeah his.'),

(54, 'Mar', 'Color particular he care.'),

(64, 'Otra', 'Big partner where player.'),

(147, 'Haki', 'Personal eight job old.'),

(140, 'Kairoseki', 'Both success have field.'),

(66, 'Haki', 'Treatment sit nice.'),

(22, 'Otra', 'Animal year single.'),

(89, 'Haki', 'Body miss feeling executive.'),

(49, 'Otra', 'Third evidence wall.'),

(135, 'Otra', 'Man let American appear.'),

(85, 'Otra', 'Subject partner wall.'),

(9, 'Otra', 'Simply effect wear.'),

(148, 'Kairoseki', 'Develop not far.'),

(149, 'Haki', 'Detail smile party.'),

(73, 'Mar', 'Force unit vote bit could.'),

(1, 'Kairoseki', 'Bag role write.'),

(63, 'Haki', 'Born bag maybe likely sort.'),

(70, 'Kairoseki', 'Audience large eat.'),

(65, 'Haki', 'Class idea price ready.'),

(84, 'Kairoseki', 'Per fact while.'),

(87, 'Haki', 'Morning marriage care.'),

(128, 'Haki', 'Play develop serve own air.'),

(150, 'Haki', 'Sometimes safe phone.');

INSERT INTO arco_historia (nombre, episodio_inicio, episodio_fin, descripcion, importancia) VALUES

('Arco 1', 593, 622, 'Leader book college word address natural large.', 'Filler'),

('Arco 2', 956, 996, 'Create walk trial use quite sometimes before.', 'Especial'),

('Arco 3', 709, 720, 'Last cover case travel yes might room husband.', 'Filler'),

('Arco 4', 667, 689, 'Hotel discuss open return quite be.', 'Filler'),

('Arco 5', 888, 919, 'Control movement answer commercial.', 'Especial'),

('Arco 6', 688, 707, 'Table protect company decision.', 'Filler'),

('Arco 7', 326, 342, 'Realize morning indicate see.', 'Especial'),

('Arco 8', 672, 722, 'Western else over return mission.', 'Filler'),

('Arco 9', 946, 982, 'Hair performance education science thank buy.', 'Filler'),

('Arco 10', 208, 251, 'Include provide tree practice glass.', 'Filler'),

('Arco 11', 866, 872, 'Because ground college east.', 'Especial'),

('Arco 12', 526, 569, 'Detail ever picture professional other.', 'Canon'),

('Arco 13', 943, 975, 'Admit along act research listen look.', 'Filler'),

('Arco 14', 487, 501, 'Practice seven Mrs use.', 'Filler'),

('Arco 15', 492, 522, 'Drop like plant across such situation.', 'Especial'),

('Arco 16', 847, 894, 'Election service bad personal law or land.', 'Canon'),

('Arco 17', 630, 667, 'Maybe oil them never weight item as.', 'Especial'),

('Arco 18', 148, 182, 'Thus bank word assume recently send.', 'Especial'),

('Arco 19', 305, 350, 'Executive political pull field early us age.', 'Especial'),

('Arco 20', 978, 1001, 'Discussion arrive during yeah cost rate.', 'Canon'),

('Arco 21', 445, 465, 'House give either until.', 'Especial'),

('Arco 22', 417, 446, 'Remember improve family must tax agree.', 'Filler'),

('Arco 23', 556, 602, 'Pm evening then hit.', 'Especial'),

('Arco 24', 499, 516, 'Second career these century.', 'Especial'),

('Arco 25', 455, 481, 'Room white effect local high.', 'Filler'),

('Arco 26', 980, 997, 'Moment base ahead traditional.', 'Canon'),

('Arco 27', 570, 592, 'Seat surface run young phone the.', 'Canon'),

('Arco 28', 362, 367, 'Really final audience face good example.', 'Filler'),

('Arco 29', 171, 193, 'Ten computer only yeah finish choose born.', 'Canon'),

('Arco 30', 524, 543, 'Table include war trip manage.', 'Especial');

INSERT INTO fruta_arco (id_fruta, id_arco, relevancia) VALUES

(13, 12, 'Protagonista'),

(149, 9, 'Secundaria'),

(53, 4, 'Mencionada'),

(62, 24, 'Mencionada'),

(66, 6, 'Protagonista'),

(134, 25, 'Protagonista'),

(40, 25, 'Protagonista'),

(60, 8, 'Mencionada'),

(94, 23, 'Mencionada'),

(132, 5, 'Secundaria'),

(104, 1, 'Mencionada'),

(135, 29, 'Mencionada'),

(150, 24, 'Protagonista'),

(127, 1, 'Mencionada'),

(141, 25, 'Secundaria'),

(45, 8, 'Mencionada'),

(58, 28, 'Mencionada'),

(80, 6, 'Mencionada'),

(73, 6, 'Protagonista'),

(35, 25, 'Secundaria'),

(13, 21, 'Mencionada'),

(143, 12, 'Secundaria'),

(148, 17, 'Mencionada'),

(124, 21, 'Secundaria'),

(148, 5, 'Mencionada'),

(83, 9, 'Mencionada'),

(40, 11, 'Mencionada'),

(31, 9, 'Secundaria'),

(8, 5, 'Mencionada'),

(59, 1, 'Protagonista');

INSERT INTO haki_usuarios (id_personaje, tipo, nivel) VALUES

(64, 'Busoshoku', 'Despertado'),

(114, 'Kenbunshoku', 'Avanzado'),

(114, 'Haoshoku', 'Avanzado'),

(142, 'Busoshoku', 'Despertado'),

(26, 'Busoshoku', 'Básico'),

(44, 'Kenbunshoku', 'Básico'),

(135, 'Busoshoku', 'Avanzado'),

(14, 'Haoshoku', 'Básico'),

(4, 'Kenbunshoku', 'Intermedio'),

(133, 'Haoshoku', 'Despertado'),

(48, 'Kenbunshoku', 'Básico'),

(75, 'Busoshoku', 'Intermedio'),

(70, 'Kenbunshoku', 'Despertado'),

(67, 'Kenbunshoku', 'Avanzado'),

(95, 'Kenbunshoku', 'Básico'),

(9, 'Busoshoku', 'Avanzado'),

(116, 'Haoshoku', 'Avanzado'),

(10, 'Haoshoku', 'Despertado'),

(31, 'Busoshoku', 'Despertado'),

(125, 'Haoshoku', 'Avanzado'),

(135, 'Kenbunshoku', 'Intermedio'),

(68, 'Busoshoku', 'Básico'),

(34, 'Haoshoku', 'Avanzado'),

(112, 'Haoshoku', 'Despertado'),

(50, 'Haoshoku', 'Intermedio'),

(123, 'Kenbunshoku', 'Básico'),

(100, 'Busoshoku', 'Básico'),

(69, 'Busoshoku', 'Despertado'),

(51, 'Haoshoku', 'Básico'),

(74, 'Kenbunshoku', 'Intermedio'),

(58, 'Kenbunshoku', 'Despertado'),

(44, 'Kenbunshoku', 'Avanzado'),

(120, 'Kenbunshoku', 'Avanzado'),

(31, 'Busoshoku', 'Intermedio'),

(23, 'Kenbunshoku', 'Despertado'),

(8, 'Haoshoku', 'Intermedio'),

(23, 'Haoshoku', 'Despertado'),

(63, 'Kenbunshoku', 'Despertado'),

(139, 'Haoshoku', 'Intermedio'),

(87, 'Busoshoku', 'Avanzado');
