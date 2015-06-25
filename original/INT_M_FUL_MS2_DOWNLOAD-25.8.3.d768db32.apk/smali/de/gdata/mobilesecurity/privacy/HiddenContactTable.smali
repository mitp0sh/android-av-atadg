.class public Lde/gdata/mobilesecurity/privacy/HiddenContactTable;
.super Lde/gdata/mobilesecurity/database/Table;
.source "SourceFile"


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "hidden_contact"

.field private static a:[Lde/gdata/mobilesecurity/database/Column;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/privacy/HiddenContactTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "hidden_contact"

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/database/Table;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getColumns()[Lde/gdata/mobilesecurity/database/Column;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lde/gdata/mobilesecurity/privacy/HiddenContactTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    if-nez v0, :cond_0

    .line 29
    const-class v0, Lde/gdata/mobilesecurity/privacy/HiddenContactTable$Columns;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/HiddenContactTable;->extractColumns(Ljava/lang/Class;)[Lde/gdata/mobilesecurity/database/Column;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/privacy/HiddenContactTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    .line 31
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/privacy/HiddenContactTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    return-object v0
.end method
