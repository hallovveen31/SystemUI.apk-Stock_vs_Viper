.class public Lcom/android/systemui/statusbar/policy/HeaderClock;
.super Lcom/android/systemui/statusbar/policy/Clock;
.source "HeaderClock.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getAMPMTweakName()Ljava/lang/String;
    .locals 1

    const-string v0, "tweaks_headerclock_ampm"

    return-object v0
.end method

.method protected getClockSecondTweakName()Ljava/lang/String;
    .locals 1

    const-string v0, "tweaks_show_headerclockseconds"

    return-object v0
.end method

.method protected getColorTweakName()Ljava/lang/String;
    .locals 1

    const-string v0, "tweaks_headerclock_color"

    return-object v0
.end method

.method protected getVisibilityTweakName()Ljava/lang/String;
    .locals 1

    const-string v0, "tweaks_headerclock_style"

    return-object v0
.end method
