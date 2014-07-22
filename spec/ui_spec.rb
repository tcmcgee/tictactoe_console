require "console_ui"


describe ConsoleUi do
	let (:ui) {ConsoleUi.new}


	xit "can display a welcome message", :speed => 'slow' do
		ui.stub(:size).and_return(9)
		expect(ui.print_instructions).to eq( "Welcome to Tic Tac Toe!\nWhen playing please reference the board as follows.\n\n 1 | 2 | 3 \n --------------\n 4 | 5 | 6 \n --------------\n 7 | 8 | 9 \n\n\n Press Enter to continue..")
	end

	xit "can return a board as a string" do
		expect(ui.display_board(TicTacToe.new(9)) == ("\n   |   |   \n   |   |   \n   |   |   "))
	end

	it "returns true if player is selected to go first" do
		ui.stub(:gets).and_return("1")
		expect(ui.get_first_turn).to eq(true)
	end
	it "returns returns false if computer is selected to go first" do
		ui.stub(:gets).and_return("2")
		expect(ui.get_first_turn).to eq(false)
	end
	
	it "asks again, if an incorrect input is given" do
		ui.stub(:gets).and_return("5","1")
		expect(ui.get_first_turn).to eq(true)
	end

	it "can return a previously selected size" do
		ui.stub(:gets).and_return("1")
		ui.get_board_size
		expect(ui.size).to eq(9)
	end

	it "prints a thinking message" do
		$stdout.should_receive(:puts).with("Thinking... Please wait!")
		ui.print_thinking_message

	end
end
