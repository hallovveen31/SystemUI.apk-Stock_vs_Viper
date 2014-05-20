.class public Lcom/android/systemui/ImageWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$DrawableEngine;
    }
.end annotation


# static fields
.field static final FIXED_SIZED_SURFACE:Z

.field static final IS_SENSE5:Z

.field static final USE_OPENGL:Z

.field static final customizeManager:Lcom/htc/customization/HtcCustomizationManager;

.field static final customizeReader:Lcom/htc/customization/HtcCustomizationReader;


# instance fields
.field mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

.field mIsHwAccelerated:Z

.field mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/ImageWallpaper;->customizeManager:Lcom/htc/customization/HtcCustomizationManager;

    .line 82
    sget-object v0, Lcom/android/systemui/ImageWallpaper;->customizeManager:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/ImageWallpaper;->customizeManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v3, "System"

    invoke-virtual {v0, v3, v2, v1}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/android/systemui/ImageWallpaper;->customizeReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 83
    sget-object v0, Lcom/android/systemui/ImageWallpaper;->customizeReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_3

    const-string v0, "5.0"

    sget-object v3, Lcom/android/systemui/ImageWallpaper;->customizeReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v4, "sense_version"

    const-string v5, "5.0"

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "5.5"

    sget-object v3, Lcom/android/systemui/ImageWallpaper;->customizeReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v4, "sense_version"

    const-string v5, "5.5"

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "6.0"

    sget-object v3, Lcom/android/systemui/ImageWallpaper;->customizeReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v4, "sense_version"

    const-string v5, "6.0"

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/systemui/ImageWallpaper;->IS_SENSE5:Z

    .line 85
    sget-boolean v0, Lcom/android/systemui/ImageWallpaper;->IS_SENSE5:Z

    if-nez v0, :cond_4

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/systemui/ImageWallpaper;->FIXED_SIZED_SURFACE:Z

    .line 86
    sget-boolean v0, Lcom/android/systemui/ImageWallpaper;->IS_SENSE5:Z

    if-nez v0, :cond_5

    :goto_3
    sput-boolean v2, Lcom/android/systemui/ImageWallpaper;->USE_OPENGL:Z

    return-void

    .line 82
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 83
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 85
    goto :goto_2

    :cond_5
    move v2, v1

    .line 86
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 127
    return-void
.end method

.method private static isEmulator()Z
    .locals 3

    .prologue
    .line 118
    const-string v0, "1"

    const-string v1, "ro.kernel.qemu"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 100
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 103
    sget-boolean v0, Lcom/android/systemui/ImageWallpaper;->FIXED_SIZED_SURFACE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/ImageWallpaper;->USE_OPENGL:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->isEmulator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    .line 108
    :cond_0
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;-><init>(Lcom/android/systemui/ImageWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    .line 124
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    return-object v0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->trimMemory(I)V

    .line 115
    :cond_0
    return-void
.end method
