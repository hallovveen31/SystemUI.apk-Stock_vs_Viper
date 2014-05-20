.class Lcom/android/systemui/statusbar/info/InfoLine$2;
.super Landroid/database/ContentObserver;
.source "InfoLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/info/InfoLine;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/info/InfoLine;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/info/InfoLine;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/info/InfoLine$2;->this$0:Lcom/android/systemui/statusbar/info/InfoLine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine$2;->this$0:Lcom/android/systemui/statusbar/info/InfoLine;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/info/InfoLine;->UpdateSettings()V

    return-void
.end method
