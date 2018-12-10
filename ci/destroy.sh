#!/bin/bash

~/yandex-cloud/bin/yc compute instance delete access

~/yandex-cloud/bin/yc compute instance delete node01
~/yandex-cloud/bin/yc compute instance delete node02
~/yandex-cloud/bin/yc compute instance delete node03

~/yandex-cloud/bin/yc compute instance delete master01
~/yandex-cloud/bin/yc compute instance delete master02
~/yandex-cloud/bin/yc compute instance delete master03

