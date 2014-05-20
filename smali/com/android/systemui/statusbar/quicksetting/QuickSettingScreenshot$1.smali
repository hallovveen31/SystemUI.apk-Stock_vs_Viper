.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$1;
.super Ljava/lang/Object;
.source "QuickSettingScreenshot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->onAttachedToWindow()V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->takeScreenshot()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0
.end method
