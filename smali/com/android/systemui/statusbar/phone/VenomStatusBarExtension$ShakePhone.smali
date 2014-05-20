.class public Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;
.super Ljava/lang/Object;
.source "VenomStatusBarExtension.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShakePhone"
.end annotation


# instance fields
.field Cr:Landroid/content/ContentResolver;

.field private final SHAKE_THRESHOLD:I

.field private last_x:F

.field private lastupdate:J

.field private sensorMan:Landroid/hardware/SensorManager;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

.field private x:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->lastupdate:J

    const/16 v0, 0x320

    iput v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->SHAKE_THRESHOLD:I

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->Cr:Landroid/content/ContentResolver;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->sensorMan:Landroid/hardware/SensorManager;

    return-void
.end method

.method private Round(FI)F
    .locals 6

    const-wide/high16 v2, 0x4024

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v1, v2

    div-float v2, v1, v0

    return v2
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(I[F)V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x0

    if-eq p1, v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->lastupdate:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->lastupdate:J

    sub-long v3, v1, v6

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->lastupdate:J

    aget v6, p2, v10

    iput v6, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->x:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->x:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->last_x:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    long-to-float v7, v3

    div-float/2addr v6, v7

    const v7, 0x461c4000

    mul-float v5, v6, v7

    iget v6, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->x:F

    invoke-direct {p0, v6, v12}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->Round(FI)F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x4024

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->x:F

    invoke-direct {p0, v6, v12}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->Round(FI)F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, -0x3fdc

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    :cond_2
    const/high16 v6, 0x4448

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_systemui_shake"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    :cond_3
    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->x:F

    iput v6, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->last_x:F

    goto :goto_0

    :cond_4
    if-ne v0, v11, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->togglePannels()V
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$4(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto :goto_1
.end method

.method public start()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->sensorMan:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    const-string v0, "m0narX_tweaks"

    const-string v1, "Shaker registred"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->sensorMan:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    const-string v0, "m0narX_tweaks"

    const-string v1, "Shaker unregistred"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
