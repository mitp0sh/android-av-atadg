.class Lde/gdata/mobilesecurity/activities/debug/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/n;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 421
    invoke-static {p2}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->setMiiReportInDebugMode(Z)V

    .line 422
    return-void
.end method
