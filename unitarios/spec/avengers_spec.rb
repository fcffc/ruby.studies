class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end
    
end

# TDD (Desenvolvimento guiado por teste)
describe AvengersHeadQuarter do
    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new
        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
        expect(hq.list).to include 'Spiderman' # String
    end

    it 'Deve adionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        res = hq.list.size > 0
        expect(hq.list).to eql ['Thor', 'Hulk', 'Spiderman']
        expect(hq.list).to include 'Thor'
        expect(hq.list.size).to be > 0
        expect(res).to be true
    end

    it 'Thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        expect(hq.list).to start_with('Thor')
    end

    it 'Ironman deve ser o último da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman')
    end

    it 'Deve conter o sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/) # Expressão regular
        expect(avenger).not_to match(/Fernanda/) # Expressão regular
    end
end