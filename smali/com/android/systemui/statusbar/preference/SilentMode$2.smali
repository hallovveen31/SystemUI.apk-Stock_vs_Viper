.class Lcom/android/systemui/statusbar/preference/SilentMode$2;
.super Ljava/lang/Object;
.source "SilentMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/SilentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/SilentMode;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/SilentMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/SilentMode$2;->this$0:Lcom/android/systemui/statusbar/preference/SilentMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/SilentMode$2;->this$0:Lcom/android/systemui/statusbar/preference/SilentMode;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/SilentMode;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "SilentMode"

    const-string v2, "Enabling silent mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/SilentMode$2;->this$0:Lcom/android/systemui/statusbar/preference/SilentMode;

    #getter for: Lcom/android/systemui/statusbar/preference/SilentMode;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/SilentMode;->access$1(Lcom/android/systemui/statusbar/preference/SilentMode;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
