# require('./pizza')
require_relative('pizza')

class Pizzeria
    #class variable
    @@total_pizza_sold = 0
  
        def initialize(address)
            #instance variables
            @is_open = false
            @stock = 0
            @pizza_sold_here = 0
            @location = address
        end
    
    #class method
    def self.get_total_pizza_sold
        return @@total_pizza_sold #Class method is used to get the value of class variable.
    end

    #instance methods
    def get_total_pizza_sold
        return @@total_pizza_sold
    end

    def get_the_local_count
        return @pizza_sold_here
    end
    def open
        @is_open = true
     end
    
      def close
        @is_open = false
      end

      def order(toppings) #get the input for making pizza ..ie, the toppings
        #check if the shop is open and stock is available
        if @is_open && @stock > 0
        #make pizza
        the_ordered_pizza = Pizza.new(toppings)

        #bake the pizza
        the_ordered_pizza.bake
        #cut the pizza
        4.times do
        the_ordered_pizza.cut
        end
        #decrement the stock count
        
        @stock -= 1
        #incremnet the pizza sold count
        @pizza_sold_here += 1
        #increment the total sales ie.., the class variable
        @@total_pizza_sold += 1 #can access class variable inside instance method
        #return pizza ie.., pizza
        return the_ordered_pizza
        else
            return nil
        end
      end

      def restock
        if !@is_open
            @stock += 5
        end

      end
    
end

bay_st = Pizzeria.new('Bay_st')
puts 'go to bay st & make a pizza order'
bay_st.restock
bay_st.open
my_bay_st_order_1 = bay_st.order(['mushroom','onions'])
my_bay_st_order_1.eat
puts 'you order'
p my_bay_st_order_1


puts '-------'

my_bay_st_order_2 = bay_st.order(['mushroom','onions','olives'])
puts 'you order'
p my_bay_st_order_2

puts '-------'

my_bay_st_order_3 = bay_st.order(['mushroom','onions','olives','green pepper'])
puts 'you order'
p my_bay_st_order_3
p bay_st
puts '---------'
puts "total pizza sold #{Pizzeria.get_total_pizza_sold}"
york = Pizzeria.new('York')
puts 'go to York and order some pizza'
puts '**************************'
york.restock
york.open
my_york_order1 = york.order(['onions'])
p my_york_order1
puts '********************'

p york
puts "total pizza sold #{Pizzeria.get_total_pizza_sold}"
puts york.get_total_pizza_sold