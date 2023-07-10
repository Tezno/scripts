import os
import shutil
from typing import IO, AnyStr


def main():
    lines: list[AnyStr] = get_lines_from_file()
    paths: list[AnyStr] = get_occurrence_path(lines)
    paths_clean: list[AnyStr] = clear_directories(paths)
    correct_folder(paths_clean)
    # print(paths_clean)
    print(len(paths_clean))


def get_lines_from_file() -> list[AnyStr]:
    file: IO = open('listOfFiles.list', 'r')
    return file.readlines()


def get_occurrence_path(lines: list[AnyStr]) -> list[AnyStr]:
    paths: list[AnyStr] = []
    for line in lines:
        directory: str = os.path.dirname(line)
        occurrences: list[str] = directory.split("/")
        for occurrence in occurrences:
            occurrence_number: int = occurrences.count(occurrence)
            if occurrence_number > 1 and directory not in paths:
                paths.append(directory)

    return paths


def clear_directories(paths) -> list[AnyStr]:
    paths_clean: list[AnyStr] = []
    for path in paths:
        sub_path: str = path.replace("/data-s2/storage/temp/testpath-qa-inscale/", "")
        path_exist = os.path.exists("/data-s2/storage/inscale/tests/integration/develop/IntegrationTest/" + sub_path)

        if not path_exist:
            paths_clean.append(path)

    return paths_clean


def correct_folder(paths):
    for path in paths:
        directories: list[str] = path.split("/")
        if directories[-2] == directories[-3]:
            print(os.path.dirname(path))


if __name__ == "__main__":
    main()
