recipes = [
    Recipe.new(title: 'Duńska zupa z porów', description: 'Przepis na duńską zupę porową, która podawana jest z serem, grzankami lub bagietką. Jej przygotowanie nie zajmie dużo czasu, a na zimne jesienne dni zda się w sam raz.'),
    Recipe.new(title: 'Czerwony barszcz według mojej babci Reginy', description: 'Tak jest od wieków, że potrawy wigilijne, zwłaszcza te najbardziej tradycyjne robią babcie i... dziadkowie. Jak kiedyś będę dziadkiem, to moim wnukom dam to, co najlepsze - czyli prawdziwy smak na kol'),
    Recipe.new(title: 'Zupa z dyni z imbirem bardzo aromatyczna', description: 'Zupa z dyni z imbirem jest szalenie aromatyczna. Kolorowa, delikatna, jedwabista w smaku. Warto wypróbować, szczególnie w jesienne dni!'),
    Recipe.new(title: 'Gesta zupa z brokułami i żóltym serem', description: 'Bardzo gesta, kremowa i kolorowa zupa - w sam raz na zimowy obiad'),
    Recipe.new(title: 'Zupa ziemniakowa bardzo jedwabista i mocno aromatyczna', description: 'Delikatnie aksamitna zupa ziemniaczana, która rozgrzeje Cię po jesiennym spacerze. Zupa jest aromatyczna i bardzo jedwabista. Jak ją zrobić? Zobacz nasz przepis na zupę ziemniaczaną. '),
    Recipe.new(title: 'Żur Wielkanocny, mocno wędzonką i majerankiem pachnący', description: 'Tem żur, to obowiązkowa pozycja na wielkanocnym stole. Pachnie mocno wędzonką i majerankiem, jest kwaśny i aromatyczny. Mocno rozgrzewa i wspaniale podkręca apetyt!'),
    Recipe.new(title: 'Zupa z kurek - nie znam lepszej :)', description: 'Każdy będzie zadowolony :) Jak świat światem, są dwie frakcje: makaronowa i ziemniakowa. Pierwsi uważają, że grzybowa zupa to tylko z makaron, ci drudzy nie wyobrażając sobie z czymś innym, niż z...'),
    Recipe.new(title: 'Rosół domowy', description: 'Jeśli ma być taki "jak u Babci", musi być przygotowany z kury wiejskiej, kupionej na targu, lub otrzymanej w prezencie od rodziny ze wsi. Drób pochodzący z fermy zupełnie się do niego nie nadaje. Pods...'),
    Recipe.new(title: 'Zimowy tradycyjny kapuśniak polski', description: 'Zimowy tradycyjny kapuśniak, to typowo polskie danie, które musi być tłuste, aromatyczne i mocno kwaśne. Pysznie rozgrzewa.'),
    Recipe.new(title: 'Zupa pomidorowa z pieczonych pomidorów - najlepsza na świecie :) - film video HD', description: 'Zupa pomidorowa z pieczonych pomidorów jest po prostu najlepsza na świecie. Głęboki smak pomidorów i czosnku sprawia, że zupa jest bardzo aromatyczna. Do tego tymianek i świeża bazylia, a także pieczo...')
]

recipes.each { |r| r.slug = r.generate_slug; r.save!}

recipes.each do |recipe|
  recipe.stages.create(title: 'stage1')
  recipe.stages.create(title: 'stage2')
end

ingredients = []

5.times do |n|
  ingredients << Ingredient.create(name: "Ingredient#{n}", description: 'Lorem ipsum')
end

Stage.find_each do |stage|
  2.times do |n|
    stage.steps.create(content: "Lorem ipsum #{n}")
  end

  5.times do |n|
    stage.ingredients << ingredients[n]
  end
end

p 'seed success!'