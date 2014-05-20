.class Lcom/android/systemui/statusbar/preference/XLoud$2;
.super Ljava/lang/Object;
.source "XLoud.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/XLoud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/XLoud;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/XLoud;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/XLoud$2;->this$0:Lcom/android/systemui/statusbar/preference/XLoud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.m0narx.soundenhancer"

    const-string v2, "com.m0narx.soundenhancer.main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/XLoud$2;->this$0:Lcom/android/systemui/statusbar/preference/XLoud;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/XLoud$2;->this$0:Lcom/android/systemui/statusbar/preference/XLoud;

    #getter for: Lcom/android/systemui/statusbar/preference/XLoud;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/XLoud;->access$1(Lcom/android/systemui/statusbar/preference/XLoud;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/preference/XLoud;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method
