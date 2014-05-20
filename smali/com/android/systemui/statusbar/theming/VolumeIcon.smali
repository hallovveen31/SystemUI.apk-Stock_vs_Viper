.class public Lcom/android/systemui/statusbar/theming/VolumeIcon;
.super Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;
.source "VolumeIcon.java"


# static fields
.field public static final TWEAK_NAME:Ljava/lang/String; = "tweaks_systemui_theme_volume"

.field public static final TWEAK_NAME_VISIBILITY:Ljava/lang/String; = "tweaks_show_volume_icons"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getIconName()Ljava/lang/String;
    .locals 1

    const-string v0, "volume"

    return-object v0
.end method

.method protected getTweakName()Ljava/lang/String;
    .locals 1

    const-string v0, "tweaks_systemui_theme_volume"

    return-object v0
.end method

.method protected setMapping(Ljava/util/HashMap;)V
    .locals 3
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

    const/4 v2, 0x0

    const v0, 0x7f020488

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f020489

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
