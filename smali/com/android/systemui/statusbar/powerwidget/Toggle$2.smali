.class Lcom/android/systemui/statusbar/powerwidget/Toggle$2;
.super Landroid/content/BroadcastReceiver;
.source "Toggle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/powerwidget/Toggle;->setupThemeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/Toggle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v3, "Venom - Toggle"

    const-string v4, "onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v3, v3, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v1

    const-string v3, "Venom - Toggle"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "htcThemeId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v3, v3, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "Venom - Toggle"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "resources: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #calls: Lcom/android/systemui/statusbar/powerwidget/Toggle;->getThemeOverlayColor(Landroid/content/Context;)I
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$10(Lcom/android/systemui/statusbar/powerwidget/Toggle;Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$11(I)V

    const-string v3, "Venom - Toggle"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "overlayColor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$12()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #calls: Lcom/android/systemui/statusbar/powerwidget/Toggle;->initIndicatorColors()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$13(Lcom/android/systemui/statusbar/powerwidget/Toggle;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #calls: Lcom/android/systemui/statusbar/powerwidget/Toggle;->setIndicatorProgress()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$5(Lcom/android/systemui/statusbar/powerwidget/Toggle;)V

    const-string v3, "Venom - Toggle"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "receive.theme:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RGB:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$12()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$12()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$12()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
