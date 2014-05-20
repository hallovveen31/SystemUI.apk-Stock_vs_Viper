.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;
.super Ljava/lang/Object;
.source "QuickSettingRoaming.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    const-string v2, "QuickSettingRoaming"

    const-string v3, "click:toogle roaming state!"

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurrentState:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->setRoamingState(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const-string v1, "domestic"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "international"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "QuickSettingRoaming"

    const-string v2, "No voice open"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
