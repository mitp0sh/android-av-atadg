.class Lde/gdata/mobilesecurity/activities/logs/v;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogFragment;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/v;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 358
    const-string v0, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const-string p1, "id"

    .line 361
    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
