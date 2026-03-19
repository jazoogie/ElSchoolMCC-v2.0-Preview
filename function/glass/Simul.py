import random

PLATFORMS = 16
PLAYERS = 16

ITERS = 10 ** 6 // 3

p_wins = [0,] * PLAYERS

# Simulate each game
for _ in range(ITERS):
    plats_cleared = 0
    alive_players = PLAYERS

    while alive_players > 0 and plats_cleared < PLATFORMS:
        # Regardless of death, a platform is cleared
        plats_cleared += 1

        # 50/50 chance of death
        if random.randint(0, 1):
            alive_players -= 1

    for i in range(alive_players):
        p_wins[i] += 1

print(p_wins)

for i, wins in enumerate(p_wins):
    print(f"Player {PLAYERS - i}: {wins / ITERS * 100}% survival.")