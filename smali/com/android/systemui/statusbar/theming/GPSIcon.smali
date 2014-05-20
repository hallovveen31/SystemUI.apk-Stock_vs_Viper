.class public Lcom/android/systemui/statusbar/theming/GPSIcon;
.super Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;
.source "GPSIcon.java"


# static fields
.field public static final TWEAK_NAME:Ljava/lang/String; = "tweaks_systemui_theme_gps"

.field public static final TWEAK_NAME_VISIBILITY:Ljava/lang/String; = "tweaks_show_gps_icon"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getIconName()Ljava/lang/String;
    .locals 1

    const-string v0, "gps"

    return-object v0
.end method

.method protected getTweakName()Ljava/lang/String;
    .locals 1

    const-string v0, "tweaks_systemui_theme_gps"

    return-object v0
.end method

.method protected setMapping(Ljava/util/HashMap;)V
    .locals 2
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

    const v0, 0x7f020464

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f020463

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
