.class Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
.super Ljava/lang/Object;
.source "SoundButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/SoundButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Ringer"
.end annotation


# instance fields
.field final mDoHapticFeedback:Z

.field final mRingerMode:I

.field final mVibrateInSilent:Z

.field final mVibrateSetting:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateInSilent:Z

    iput p3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateSetting:I

    iput p4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mDoHapticFeedback:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    iget v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    if-nez v3, :cond_2

    iget v3, v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    iget v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    if-ne v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateInSilent:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateInSilent:Z

    if-ne v3, v4, :cond_0

    iget v3, v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateSetting:I

    iget v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateSetting:I

    if-ne v3, v4, :cond_0

    iget v3, v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    iget v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method execute()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateInSilent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    #calls: Lcom/android/systemui/statusbar/powerwidget/SoundButton;->ensureAudioManager()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->access$0(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->access$1(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)Landroid/media/AudioManager;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateSetting:I

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->access$1(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mDoHapticFeedback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mHapticFeedback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
