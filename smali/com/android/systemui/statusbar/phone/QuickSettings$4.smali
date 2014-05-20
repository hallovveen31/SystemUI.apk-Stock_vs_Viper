.class Lcom/android/systemui/statusbar/phone/QuickSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1618
    .local v2, start:J
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$300(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v4

    .line 1621
    .local v4, themeID:I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$300(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1623
    .local v0, contextTheme:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1626
    .local v1, resourceTheme:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->getThemeOverlayColor(Landroid/content/Context;)I
    invoke-static {v5, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$600(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$502(I)I

    .line 1628
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$700(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/view/ViewGroup;

    move-result-object v6

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->notifyOverlayColorChanged(Landroid/view/ViewGroup;)V
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$800(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/view/ViewGroup;)V

    .line 1629
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$900(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/view/ViewGroup;

    move-result-object v6

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->notifyOverlayColorChanged(Landroid/view/ViewGroup;)V
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$800(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/view/ViewGroup;)V

    .line 1631
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1000(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1632
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1000(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onOverlayColorChanged()V

    .line 1634
    :cond_0
    const-string v5, "QuickSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive.theme:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RGB:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$500()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$500()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$500()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    return-void
.end method
