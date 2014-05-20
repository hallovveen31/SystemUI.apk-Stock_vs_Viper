.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1$1;
.super Landroid/os/AsyncTask;
.source "QuickSettingMiniLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "args"

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.bluetooth.htcmini.HtcMiniMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    const-string v2, "start"

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->miniCount:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    .line 84
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 79
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
