.class final enum Lcom/android/systemui/usb/StorageNotification$StorageType;
.super Ljava/lang/Enum;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/usb/StorageNotification$StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/usb/StorageNotification$StorageType;

.field public static final enum PHONE_STORAGE:Lcom/android/systemui/usb/StorageNotification$StorageType;

.field public static final enum SD_CARD:Lcom/android/systemui/usb/StorageNotification$StorageType;

.field public static final enum UNKNOWN:Lcom/android/systemui/usb/StorageNotification$StorageType;

.field public static final enum USB_STORAGE:Lcom/android/systemui/usb/StorageNotification$StorageType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/usb/StorageNotification$StorageType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/usb/StorageNotification$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->UNKNOWN:Lcom/android/systemui/usb/StorageNotification$StorageType;

    new-instance v0, Lcom/android/systemui/usb/StorageNotification$StorageType;

    const-string v1, "SD_CARD"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/usb/StorageNotification$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->SD_CARD:Lcom/android/systemui/usb/StorageNotification$StorageType;

    new-instance v0, Lcom/android/systemui/usb/StorageNotification$StorageType;

    const-string v1, "PHONE_STORAGE"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/usb/StorageNotification$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->PHONE_STORAGE:Lcom/android/systemui/usb/StorageNotification$StorageType;

    new-instance v0, Lcom/android/systemui/usb/StorageNotification$StorageType;

    const-string v1, "USB_STORAGE"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/usb/StorageNotification$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->USB_STORAGE:Lcom/android/systemui/usb/StorageNotification$StorageType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/usb/StorageNotification$StorageType;

    sget-object v1, Lcom/android/systemui/usb/StorageNotification$StorageType;->UNKNOWN:Lcom/android/systemui/usb/StorageNotification$StorageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/usb/StorageNotification$StorageType;->SD_CARD:Lcom/android/systemui/usb/StorageNotification$StorageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/usb/StorageNotification$StorageType;->PHONE_STORAGE:Lcom/android/systemui/usb/StorageNotification$StorageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/usb/StorageNotification$StorageType;->USB_STORAGE:Lcom/android/systemui/usb/StorageNotification$StorageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->$VALUES:[Lcom/android/systemui/usb/StorageNotification$StorageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/usb/StorageNotification$StorageType;
    .locals 1

    const-class v0, Lcom/android/systemui/usb/StorageNotification$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/usb/StorageNotification$StorageType;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/usb/StorageNotification$StorageType;
    .locals 1

    sget-object v0, Lcom/android/systemui/usb/StorageNotification$StorageType;->$VALUES:[Lcom/android/systemui/usb/StorageNotification$StorageType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/usb/StorageNotification$StorageType;

    return-object v0
.end method
