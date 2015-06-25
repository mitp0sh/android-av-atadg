.class Lde/gdata/mobilesecurity/database/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/database/Database;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/database/Database;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/a;->a:Lde/gdata/mobilesecurity/database/Database;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/a;->a:Lde/gdata/mobilesecurity/database/Database;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/database/Database;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 39
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/a;->a:Lde/gdata/mobilesecurity/database/Database;

    invoke-virtual {v0, p1, p2, p3}, Lde/gdata/mobilesecurity/database/Database;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 44
    return-void
.end method
