.class Lcom/android/systemui/statusbar/preference/Brightness$2;
.super Ljava/lang/Object;
.source "Brightness.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/Brightness;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Brightness;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Brightness;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Brightness$2;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    const-string v1, "Venom"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Brightness: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness$2;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    const/4 v2, 0x1

    #setter for: Lcom/android/systemui/statusbar/preference/Brightness;->changedByUser:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/preference/Brightness;->access$1(Lcom/android/systemui/statusbar/preference/Brightness;Z)V

    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness$2;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    #getter for: Lcom/android/systemui/statusbar/preference/Brightness;->mMinBrightness:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/Brightness;->access$2(Lcom/android/systemui/statusbar/preference/Brightness;)I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness$2;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    #getter for: Lcom/android/systemui/statusbar/preference/Brightness;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/Brightness;->access$3(Lcom/android/systemui/statusbar/preference/Brightness;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Brightness$2;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    #getter for: Lcom/android/systemui/statusbar/preference/Brightness;->mMinBrightness:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/Brightness;->access$2(Lcom/android/systemui/statusbar/preference/Brightness;)I

    move-result v3

    add-int/2addr v3, p2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
