import unittest
from extractor import MobileNumberExtractor
class TestMobileNumberExtractor(unittest.TestCase):
    def test_extract_from_filename(self):
        self.assertEqual(MobileNumberExtractor.extract_from_filename("report_1234567890.pdf"), "+1234567890")
