.class Lcom/android/systemui/statusbar/traffic/Traffic$3;
.super Landroid/os/Handler;
.source "Traffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/traffic/Traffic;->updateTraffic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/traffic/Traffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/traffic/Traffic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/high16 v5, 0x4480

    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    long-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    iget v3, v3, Lcom/android/systemui/statusbar/traffic/Traffic;->totalRxBytes:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    const/high16 v3, 0x4040

    div-float/2addr v2, v3

    iput v2, v1, Lcom/android/systemui/statusbar/traffic/Traffic;->speed:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    long-to-float v2, v2

    iput v2, v1, Lcom/android/systemui/statusbar/traffic/Traffic;->totalRxBytes:F

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    iget v1, v1, Lcom/android/systemui/statusbar/traffic/Traffic;->speed:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4090

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    iget-object v1, v1, Lcom/android/systemui/statusbar/traffic/Traffic;->mSpeed:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    iget v2, v2, Lcom/android/systemui/statusbar/traffic/Traffic;->speed:F

    div-float/2addr v2, v5

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    iget-object v1, v1, Lcom/android/systemui/statusbar/traffic/Traffic;->mSuffix:Landroid/widget/TextView;

    const-string v2, "MB/s"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/traffic/Traffic;->update()V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    iget v1, v1, Lcom/android/systemui/statusbar/traffic/Traffic;->speed:F

    float-to-double v1, v1

    const-wide v3, 0x3f84467381d7dbf5L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    iget-object v1, v1, Lcom/android/systemui/statusbar/traffic/Traffic;->mSpeed:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    iget v2, v2, Lcom/android/systemui/statusbar/traffic/Traffic;->speed:F

    mul-float/2addr v2, v5

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    iget-object v1, v1, Lcom/android/systemui/statusbar/traffic/Traffic;->mSuffix:Landroid/widget/TextView;

    const-string v2, "B/s"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    iget-object v1, v1, Lcom/android/systemui/statusbar/traffic/Traffic;->mSpeed:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    iget v2, v2, Lcom/android/systemui/statusbar/traffic/Traffic;->speed:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic$3;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    iget-object v1, v1, Lcom/android/systemui/statusbar/traffic/Traffic;->mSuffix:Landroid/widget/TextView;

    const-string v2, "KB/s"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
