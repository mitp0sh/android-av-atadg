.class Lde/gdata/mobilesecurity/activities/logs/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/h;->a:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/h;->a:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->OCLstartScan(I)V

    .line 643
    return-void
.end method
