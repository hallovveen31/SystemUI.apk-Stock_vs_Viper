.class public abstract Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;
.super Ljava/lang/Object;
.source "LevelThemeableIcon.java"


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSlot:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->mMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->mMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->setMapping(Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->mSlot:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->mMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected abstract getIconName()Ljava/lang/String;
.end method

.method public getTheme()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->getTweakName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTweakName()Ljava/lang/String;
.end method

.method public has(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->mMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract setMapping(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
