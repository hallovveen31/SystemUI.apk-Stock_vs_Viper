.class Lcom/android/systemui/statusbar/preference/ScreenOn$1;
.super Landroid/database/ContentObserver;
.source "ScreenOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/ScreenOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/ScreenOn;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$1;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$1;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    #calls: Lcom/android/systemui/statusbar/preference/ScreenOn;->refreshInfo()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/ScreenOn;->access$0(Lcom/android/systemui/statusbar/preference/ScreenOn;)V

    return-void
.end method
