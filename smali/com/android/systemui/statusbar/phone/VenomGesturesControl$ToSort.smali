.class public Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;
.super Ljava/lang/Object;
.source "VenomGesturesControl.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/VenomGesturesControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToSort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private score:D

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/VenomGesturesControl;DLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;->this$0:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;->score:D

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;->score:D

    iget-wide v2, p1, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;->score:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;->score:D

    iget-wide v2, p1, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;->score:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;->compareTo(Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;->name:Ljava/lang/String;

    return-object v0
.end method
