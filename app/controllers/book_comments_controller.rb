class BookCommentsController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @book_comment = current_user.book_comments.new(comment_params)
    @book_comment.book_id = @book.id
    @book_comment.save
    @book_comment = BookComment.new
  end

  def destroy
    @book_comment = BookComment.find(params[:id])
    @book = Book.find(params[:book_id])
    @book_comment.book_id = @book.id
    @book_comment.destroy
  end

  private
    def comment_params
      params.require(:book_comment).permit(:comment)
    end

end
