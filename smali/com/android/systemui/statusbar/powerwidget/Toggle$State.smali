.class public final enum Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
.super Ljava/lang/Enum;
.source "Toggle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/Toggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/powerwidget/Toggle$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

.field public static final enum ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

.field private static final synthetic ENUM$VALUES:[Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

.field public static final enum INTERMEDIATE:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

.field public static final enum TURNING_OFF:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

.field public static final enum TURNING_ON:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

.field public static final enum UNKNOWN:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    const-string v1, "TURNING_ON"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_ON:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    const-string v1, "TURNING_OFF"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_OFF:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    const-string v1, "INTERMEDIATE"

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->INTERMEDIATE:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->UNKNOWN:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_ON:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_OFF:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->INTERMEDIATE:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->UNKNOWN:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENUM$VALUES:[Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENUM$VALUES:[Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
