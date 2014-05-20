.class Lcom/android/systemui/statusbar/preference/ScreenOn$2;
.super Ljava/lang/Object;
.source "ScreenOn.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$2;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$2;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    #calls: Lcom/android/systemui/statusbar/preference/ScreenOn;->getScreenTimeout()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/ScreenOn;->access$1(Lcom/android/systemui/statusbar/preference/ScreenOn;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$2;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$2;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    #calls: Lcom/android/systemui/statusbar/preference/ScreenOn;->getOldScreenTimeout()I
    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/ScreenOn;->access$2(Lcom/android/systemui/statusbar/preference/ScreenOn;)I

    move-result v2

    #calls: Lcom/android/systemui/statusbar/preference/ScreenOn;->setScreenTimeout(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/preference/ScreenOn;->access$3(Lcom/android/systemui/statusbar/preference/ScreenOn;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$2;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    #calls: Lcom/android/systemui/statusbar/preference/ScreenOn;->setOldScreenTimeout(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/preference/ScreenOn;->access$4(Lcom/android/systemui/statusbar/preference/ScreenOn;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$2;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    #calls: Lcom/android/systemui/statusbar/preference/ScreenOn;->setScreenTimeout(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/preference/ScreenOn;->access$3(Lcom/android/systemui/statusbar/preference/ScreenOn;I)V

    goto :goto_0
.end method
