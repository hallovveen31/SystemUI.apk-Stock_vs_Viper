.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$6;
.super Ljava/lang/Object;
.source "QuickSettingScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->imageview:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const-string v0, "QuickSettingScreenshot"

    const-string v1, "restoreTileView:exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
