.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2$1;
.super Landroid/os/AsyncTask;
.source "QuickSettingBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "args"

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, intent:Landroid/content/Intent;
    const-string v1, ":android:show_preference"

    const-string v2, "brightness"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    .line 136
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
