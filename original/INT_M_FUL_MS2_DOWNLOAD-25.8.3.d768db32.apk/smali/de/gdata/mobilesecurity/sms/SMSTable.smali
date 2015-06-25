.class public Lde/gdata/mobilesecurity/sms/SMSTable;
.super Lde/gdata/mobilesecurity/database/Table;
.source "SourceFile"


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "sms"

.field private static a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "sms"

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/database/Table;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getColumns()[Lde/gdata/mobilesecurity/database/Column;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lde/gdata/mobilesecurity/sms/SMSTable$Columns;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/sms/SMSTable;->extractColumns(Ljava/lang/Class;)[Lde/gdata/mobilesecurity/database/Column;

    move-result-object v0

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lde/gdata/mobilesecurity/sms/SMSTable;->a:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 25
    invoke-super {p0}, Lde/gdata/mobilesecurity/database/Table;->getProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/sms/SMSTable;->a:[Ljava/lang/String;

    .line 27
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/sms/SMSTable;->a:[Ljava/lang/String;

    return-object v0
.end method
