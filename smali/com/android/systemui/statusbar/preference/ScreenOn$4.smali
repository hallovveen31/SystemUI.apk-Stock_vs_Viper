.class Lcom/android/systemui/statusbar/preference/ScreenOn$4;
.super Ljava/lang/Object;
.source "ScreenOn.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/ScreenOn;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/ScreenOn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$4;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$4;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$4;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    #getter for: Lcom/android/systemui/statusbar/preference/ScreenOn;->timeouts:[I
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/ScreenOn;->access$5(Lcom/android/systemui/statusbar/preference/ScreenOn;)[I

    move-result-object v1

    aget v1, v1, p2

    #calls: Lcom/android/systemui/statusbar/preference/ScreenOn;->setScreenTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preference/ScreenOn;->access$3(Lcom/android/systemui/statusbar/preference/ScreenOn;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
