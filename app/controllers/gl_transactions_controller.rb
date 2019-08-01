class GlTransactionsController < ApplicationController
  before_action :set_gl_transaction, only: [:show, :edit, :update, :destroy]

  # GET /gl_transactions
  # GET /gl_transactions.json
  def index
    @gl_transactions = GlTransaction.all
  end

  # GET /gl_transactions/1
  # GET /gl_transactions/1.json
  def show
  end

  # GET /gl_transactions/new
  def new
    @gl_transaction = GlTransaction.new
  end

  # GET /gl_transactions/1/edit
  def edit
  end

  # POST /gl_transactions
  # POST /gl_transactions.json
  def create
    @gl_transaction = GlTransaction.new(gl_transaction_params)
     byebug
    respond_to do |format|
      if @gl_transaction.save
        format.html { redirect_to @gl_transaction, notice: 'Gl transaction was successfully created.' }
        format.json { render :show, status: :created, location: @gl_transaction }
      else
        format.html { render :new }
        format.json { render json: @gl_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gl_transactions/1
  # PATCH/PUT /gl_transactions/1.json
  def update
    respond_to do |format|
      if @gl_transaction.update(gl_transaction_params)
        format.html { redirect_to @gl_transaction, notice: 'Gl transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @gl_transaction }
      else
        format.html { render :edit }
        format.json { render json: @gl_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gl_transactions/1
  # DELETE /gl_transactions/1.json
  def destroy
    @gl_transaction.destroy
    respond_to do |format|
      format.html { redirect_to gl_transactions_url, notice: 'Gl transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gl_transaction
      @gl_transaction = GlTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gl_transaction_params
      params.require(:gl_transaction).permit(:transaction_category_id, :transaction_date, :from_party, :to_party, :description, transaction_details_attributes: TransactionDetail.attribute_names.map(&:to_sym).push(:_destroy,  :balance))
    end
end
