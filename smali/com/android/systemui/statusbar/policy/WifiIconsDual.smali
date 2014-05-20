.class Lcom/android/systemui/statusbar/policy/WifiIconsDual;
.super Ljava/lang/Object;
.source "WifiIconsDual.java"


# static fields
.field static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIconsDual;->WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIconsDual;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIconsDual;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIconsDual;->WIFI_LEVEL_COUNT:I

    return-void

    :array_0
    .array-data 0x4
        0xd1t 0x4t 0x2t 0x7ft
        0xd3t 0x4t 0x2t 0x7ft
        0xd5t 0x4t 0x2t 0x7ft
        0xd7t 0x4t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xd2t 0x4t 0x2t 0x7ft
        0xd4t 0x4t 0x2t 0x7ft
        0xd6t 0x4t 0x2t 0x7ft
        0xd8t 0x4t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0xe7t 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
        0xe9t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xebt 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
        0xedt 0x0t 0x2t 0x7ft
        0xeet 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
