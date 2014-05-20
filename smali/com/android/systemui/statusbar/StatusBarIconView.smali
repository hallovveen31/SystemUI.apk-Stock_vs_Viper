.class public Lcom/android/systemui/statusbar/StatusBarIconView;
.super Lcom/android/systemui/statusbar/AnimatedImageView;
.source "StatusBarIconView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBarIconView"


# instance fields
.field private mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mNotification:Landroid/app/Notification;

.field private mNumberBackground:Landroid/graphics/drawable/Drawable;

.field private mNumberPain:Landroid/graphics/Paint;

.field private mNumberText:Ljava/lang/String;

.field private mNumberX:I

.field private mNumberY:I

.field private mObserver:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

.field private mShowNotificationCount:Z

.field private mSlot:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v8, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIconSize()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIconDrawingSize()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v6, v2

    int-to-float v7, v3

    div-float v5, v6, v7

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleX(F)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleY(F)V

    const v6, 0x7f0c001d

    invoke-virtual {v4, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_tint_notif_icons"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v2, v8, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x4100

    mul-float v7, v8, v2

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "tweaks_notificon_textcolor"

    const v11, 0x7f020515

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "tweaks_systemui_notificationcount"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mShowNotificationCount:Z

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Landroid/app/Notification;)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mObserver:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIconSize()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIconDrawingSize()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v8, v3

    int-to-float v9, v4

    div-float v6, v8, v9

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleX(F)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleY(F)V

    const v8, 0x7f0c001d

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setAlpha(F)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "tweaks_tint_notif_icons"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :goto_1
    if-eqz v1, :cond_2

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_2
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "tweaks_tint_status_icons"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->clearColorFilter()V

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mShowNotificationCount:Z

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/internal/statusbar/StatusBarIcon;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;Z)Z

    move-result v0

    return v0
.end method

.method public static getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    if-eqz v4, :cond_1

    :try_start_0
    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    sget v3, Landroid/os/UserHandle;->USER_OWNER:I

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    iget v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    if-nez v4, :cond_2

    move-object v4, v5

    :goto_1
    return-object v4

    :catch_0
    move-exception v1

    const-string v4, "StatusBarIconView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Icon package not found: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_0

    :cond_2
    :try_start_1
    iget v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v6, "StatusBarIconView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v4, "Icon not found in "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    goto :goto_1

    :cond_3
    const-string v4, "<system>"

    goto :goto_2
.end method

.method private getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getStatusBarIconDrawingSize()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_status_bar_size"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0c009e

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c001c

    goto :goto_0
.end method

.method private getStatusBarIconSize()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_status_bar_size"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0c009d

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c0017

    goto :goto_0
.end method

.method private set(Lcom/android/internal/statusbar/StatusBarIcon;Z)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v7, v7, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->streq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v7, v7, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    iget v8, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    if-ne v7, v8, :cond_1

    move v1, v5

    :goto_0
    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v7, v7, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    iget v8, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    if-ne v7, v8, :cond_2

    move v2, v5

    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-boolean v7, v7, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iget-boolean v8, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-ne v7, v8, :cond_3

    move v4, v5

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v7, v7, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iget v8, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-ne v7, v8, :cond_4

    move v3, v5

    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v7, p1, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_0

    if-eqz p2, :cond_5

    :cond_0
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    move-result v7

    if-nez v7, :cond_5

    :goto_4
    return v6

    :cond_1
    move v1, v6

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    move v3, v6

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    if-eqz p2, :cond_7

    :cond_6
    iget v7, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageLevel(I)V

    :cond_7
    if-eqz v3, :cond_8

    if-eqz p2, :cond_a

    :cond_8
    iget v7, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-le v7, v5, :cond_d

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mShowNotificationCount:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02008c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_tint_notificon"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    new-instance v8, Landroid/graphics/LightingColorFilter;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    :cond_a
    if-eqz v4, :cond_b

    if-eqz p2, :cond_c

    :cond_b
    iget-boolean v7, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v7, :cond_e

    :goto_6
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    :cond_c
    move v6, v5

    goto :goto_4

    :cond_d
    iput-object v9, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    iput-object v9, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    goto :goto_5

    :cond_e
    const/16 v6, 0x8

    goto :goto_6
.end method

.method private setContentDescription(Landroid/app/Notification;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static streq(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_0

    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private updateDrawable(Z)Z
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "StatusBarIconView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No icon for slot "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected debug(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->debug(I)V

    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object v0
.end method

.method public getStatusBarSlot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mObserver:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mObserver:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->attach(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mObserver:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mObserver:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->detach(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/app/Notification;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AnimatedImageView;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    :cond_0
    return-void
.end method

.method placeNumber()V
    .locals 13

    const/16 v7, 0x63

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v10, v10, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    const/16 v11, 0x63

    if-le v10, v11, :cond_2

    const-string v5, "99+"

    :goto_0
    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v10

    add-int/lit8 v9, v10, -0x3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v10

    add-int/lit8 v3, v10, -0x3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v5, v11, v12, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v10, v4, Landroid/graphics/Rect;->right:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    sub-int v8, v10, v11

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    iget v11, v4, Landroid/graphics/Rect;->top:I

    sub-int v6, v10, v11

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v10, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v8

    iget v11, v4, Landroid/graphics/Rect;->right:I

    add-int v1, v10, v11

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    if-ge v1, v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    :cond_0
    iget v10, v4, Landroid/graphics/Rect;->right:I

    sub-int v10, v9, v10

    iget v11, v4, Landroid/graphics/Rect;->right:I

    sub-int v11, v1, v11

    iget v12, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    add-int v0, v10, v11

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    if-ge v0, v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    :cond_1
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v3, v10

    iget v11, v4, Landroid/graphics/Rect;->top:I

    sub-int v11, v0, v11

    sub-int/2addr v11, v6

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    sub-int v11, v9, v1

    sub-int v12, v3, v0

    invoke-virtual {v10, v11, v12, v9, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    :cond_2
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v10, v10, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public set(Lcom/android/internal/statusbar/StatusBarIcon;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatusBarIconView(slot="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawable()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    return-void
.end method
