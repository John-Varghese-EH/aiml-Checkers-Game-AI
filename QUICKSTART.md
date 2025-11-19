# Quick Start Guide

## 🚀 Get Running in 3 Minutes

### Step 1: Install SWI-Prolog

**Windows**:
1. Download from [swi-prolog.org](https://www.swi-prolog.org/Download.html)
2. Run the installer
3. Accept default settings

**macOS**:
```bash
brew install swi-prolog
```

**Linux (Ubuntu/Debian)**:
```bash
sudo apt-get update
sudo apt-get install swi-prolog
```

### Step 2: Clone and Navigate

```bash
git clone https://github.com/John-Varghese-EH/aiml-Checkers-Game-AI.git
cd aiml-Checkers-Game-AI
```

### Step 3: Run the AI

```bash
swipl
```

Then in the Prolog prompt:

```prolog
% Load the AI
?- ['src/checkers.pl'].

% Load the demo examples
?- ['examples/demo.pl'].

% Run all demos
?- run_all_demos.
```

## 📝 Common Commands

| Command | Description |
|---------|-------------|
| `initial_board(B).` | Get the starting board |
| `evaluate(Board, S).` | Evaluate a position |
| `count_pieces(Board, b, N).` | Count black pieces |
| `negamax(Board, 3, -10000, 10000, S).` | Run AI search (depth 3) |

## 🎯 Next Steps

1. Read the full [README.md](README.md) for detailed documentation
2. Explore [src/checkers.pl](src/checkers.pl) to understand the implementation
3. Modify the evaluation function to experiment with different strategies
4. Implement the move generation logic (`can_move/4` and `can_capture/4`)

## ❓ Need Help?

- **Prolog syntax**: [Learn Prolog Now!](http://www.learnprolognow.org/)
- **SWI-Prolog docs**: [swi-prolog.org/pldoc](https://www.swi-prolog.org/pldoc/)
- **Issues**: Open an issue on GitHub
