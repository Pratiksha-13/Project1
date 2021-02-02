class BookController < ApplicationController

	def create
		@book=Book.new(book_params)
		if @book.save
			redirect_to(action:'list')
		else
		  flash[:notice]= "Error:Record is not created"
		  render(action:'new')
		end
	end

	def delete
		@book =Book.find(params[:id])
	end
    
    def edit
		@book = Book.find(params[:id])
	end

	def update
		@book =Book.find(params[:id])
         
        if @book.update(book_params)
           redirect_to(action: 'list')
		else
	     render('edit')	
	end
	end 

	def welcome
		@book = Book.new
	end	

	def save
	end

     def destroy
     	bk=Book.find(params[:id])
     	bk.destroy

     	redirect_to(action: 'list')
     	
     end
	def list
	   @book = Book.all
	end
	
	def show
	   @book = Book.find(params[:id])
	end
	
	def new
	   @book = Book.new
	end
	
	def book_params
		params.require(:books).permit(:name, :author, :price)
    end
       
end