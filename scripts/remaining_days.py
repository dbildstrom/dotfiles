#!/usr/bin/python3

import datetime
import json


def calc_days(start=None, end=None, exclude=None):
    delta = datetime.timedelta(days=1)
    if not isinstance(start, datetime.date):
        start = datetime.date.today() + delta
    if not isinstance(end, datetime.date):
        start = datetime.date.today() + delta
    if not isinstance(exclude, list):
        exclude = []
    total = 0
    work = 0
    current = start
    days = []
    while current <= end:
        total += 1
        if current.weekday() <= 4 and current not in exclude:
            work += 1
            days.append(current)
        current += delta
    return total, work, days


def main():
    total, work, days = calc_days(
        end=datetime.date(2016, 12, 9),
        exclude=[datetime.date(2016,11, 4)]
    )
    print("%d days remaining of which %d are working days" % (total, work))
    print("days: %s" % (json.dumps([str(x) for x in days], indent=4)))


if __name__ == "__main__":
    main()
