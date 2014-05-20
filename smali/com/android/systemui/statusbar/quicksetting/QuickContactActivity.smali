.class public Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;
.super Landroid/app/Activity;
.source "QuickContactActivity.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private defaultContent:Z

.field private dotEffectCriteria:I

.field private handler:Landroid/os/Handler;

.field private final kidCardClickListener:Landroid/view/View$OnClickListener;

.field private oldConfig:Landroid/content/res/Configuration;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private final userCardClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const-string v0, "QuickContact"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->TAG:Ljava/lang/String;

    .line 36
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->DEBUG:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->handler:Landroid/os/Handler;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->oldConfig:Landroid/content/res/Configuration;

    .line 176
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->userCardClickListener:Landroid/view/View$OnClickListener;

    .line 216
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->kidCardClickListener:Landroid/view/View$OnClickListener;

    .line 295
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->dotEffectCriteria:I

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->defaultContent:Z

    .line 358
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->refreshContactField()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->handleLaunchKidFail()V

    return-void
.end method

.method private handleLaunchKidFail()V
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->finish()V

    .line 264
    return-void
.end method

.method private isPackageExist(Ljava/lang/String;)Z
    .locals 8
    .parameter "packageName"

    .prologue
    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 271
    .local v2, startTime:J
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_1

    .line 272
    :cond_0
    const/4 v1, 0x0

    .line 289
    :goto_0
    return v1

    .line 274
    :cond_1
    const/4 v1, 0x0

    .line 278
    .local v1, isPackageExist:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    const/4 v1, 0x1

    .line 287
    :goto_1
    const-string v4, "QuickContact"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPackageExist("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " elapse:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 283
    .local v0, exception:Ljava/lang/Exception;
    const-string v4, "QuickContact"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!!!query package manager fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private refreshContactField()V
    .locals 10

    .prologue
    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 305
    .local v2, startTime:J
    sget-object v6, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserLock:Ljava/lang/Object;

    monitor-enter v6

    .line 307
    const v5, 0x7f07003e

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 309
    .local v4, textView:Landroid/widget/TextView;
    if-nez v4, :cond_0

    .line 310
    monitor-exit v6

    .line 355
    :goto_0
    return-void

    .line 313
    :cond_0
    sget-object v5, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserName:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 315
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->defaultContent:Z

    .line 316
    const v5, 0x7f0a00ad

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 317
    invoke-static {p0}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 326
    :goto_1
    const v5, 0x7f07003d

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 328
    .local v1, imageView:Landroid/widget/ImageView;
    if-nez v1, :cond_2

    .line 329
    monitor-exit v6

    goto :goto_0

    .line 354
    .end local v1           #imageView:Landroid/widget/ImageView;
    .end local v4           #textView:Landroid/widget/TextView;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 321
    .restart local v4       #textView:Landroid/widget/TextView;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 323
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->defaultContent:Z

    goto :goto_1

    .line 332
    .restart local v1       #imageView:Landroid/widget/ImageView;
    :cond_2
    sget-object v5, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserPhoto:Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    .line 334
    const v5, 0x7f0201a5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 353
    .end local v1           #imageView:Landroid/widget/ImageView;
    :goto_2
    const-string v5, "QuickContact"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshContactField:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    monitor-exit v6

    goto :goto_0

    .line 339
    .restart local v1       #imageView:Landroid/widget/ImageView;
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->shareUserPhoto:Landroid/graphics/Bitmap;

    .line 341
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 342
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 344
    instance-of v5, v1, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v5, :cond_5

    .line 347
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->dotEffectCriteria:I

    if-le v5, v7, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->dotEffectCriteria:I

    if-gt v5, v7, :cond_5

    .line 348
    :cond_4
    check-cast v1, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    .end local v1           #imageView:Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setDotEffectEnabled(Z)V

    .line 350
    :cond_5
    const-string v5, "QuickContact"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshContactField bitmap("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") dotEffect:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->dotEffectCriteria:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 12
    .parameter "newConfig"

    .prologue
    const/4 v11, 0x1

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->oldConfig:Landroid/content/res/Configuration;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->oldConfig:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v7, v8, :cond_3

    .line 126
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 128
    .local v3, startTime:J
    const v7, 0x7f07003c

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 129
    .local v5, uModeView:Landroid/view/View;
    const v7, 0x7f07003f

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 131
    .local v0, kModeView:Landroid/view/View;
    if-eqz v5, :cond_1

    if-nez v0, :cond_2

    .line 174
    .end local v0           #kModeView:Landroid/view/View;
    .end local v3           #startTime:J
    .end local v5           #uModeView:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 134
    .restart local v0       #kModeView:Landroid/view/View;
    .restart local v3       #startTime:J
    .restart local v5       #uModeView:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 137
    .local v2, resource:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const v8, 0x7f0c0050

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const v8, 0x7f0c0051

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 144
    const-string v7, "QuickContact"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConfigurationChnaged:orientation elapse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0           #kModeView:Landroid/view/View;
    .end local v2           #resource:Landroid/content/res/Resources;
    .end local v3           #startTime:J
    .end local v5           #uModeView:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->oldConfig:Landroid/content/res/Configuration;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->oldConfig:Landroid/content/res/Configuration;

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v8, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 150
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 152
    .restart local v3       #startTime:J
    const v7, 0x7f070040

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    .local v1, kidTextView:Landroid/widget/TextView;
    if-eqz v1, :cond_5

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00e1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-static {p0}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 160
    :cond_5
    const v7, 0x7f07003e

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 163
    .local v6, userTextView:Landroid/widget/TextView;
    if-eqz v6, :cond_6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->defaultContent:Z

    if-ne v7, v11, :cond_6

    .line 165
    const v7, 0x7f0a00ad

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 166
    invoke-static {p0}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 169
    :cond_6
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->DEBUG:Z

    if-ne v7, v11, :cond_7

    .line 170
    const-string v7, "QuickContact"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConfigurationChanged:locale elapse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v1           #kidTextView:Landroid/widget/TextView;
    .end local v3           #startTime:J
    .end local v6           #userTextView:Landroid/widget/TextView;
    :cond_7
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->oldConfig:Landroid/content/res/Configuration;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 51
    .local v2, startTime:J
    const v5, 0x7f04005c

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->setContentView(I)V

    .line 53
    const v5, 0x7f07003f

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, kModeView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 57
    const-string v5, "com.zoodles.kidmode"

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->isPackageExist(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 58
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->kidCardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_0
    :goto_0
    const v5, 0x7f07003c

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 65
    .local v4, uModeView:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 66
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->userCardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_1
    const v5, 0x7f070040

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    .local v1, kidTextView:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 71
    invoke-static {p0}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0054

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->dotEffectCriteria:I

    .line 77
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.htc.action.systemui.CONTACT_UPDATE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v7, "com.htc.permission.APP_PLATFORM"

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 80
    const-string v5, "QuickContact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 60
    .end local v1           #kidTextView:Landroid/widget/TextView;
    .end local v4           #uModeView:Landroid/view/View;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->finish()V

    .line 105
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method
