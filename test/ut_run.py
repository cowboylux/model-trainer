import unittest
import dumy

class Testing(unittest.TestCase):
    def test_dumy(self):
        self.assertEqual(dumy.aplusb(2, 2), 5)

if __name__ == '__main__':
    unittest.main()