.class public final enum Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

.field public static final enum GET:Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

.field public static final enum POST:Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

.field public static final enum PUT:Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

.field private static final synthetic a:[Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;->GET:Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;->POST:Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;->PUT:Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;->DELETE:Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    sget-object v1, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;->GET:Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    aput-object v1, v0, v2

    sget-object v1, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;->POST:Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    aput-object v1, v0, v3

    sget-object v1, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;->PUT:Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    aput-object v1, v0, v4

    sget-object v1, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;->DELETE:Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    aput-object v1, v0, v5

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;->a:[Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    return-object v0
.end method

.method public static values()[Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;->a:[Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    invoke-virtual {v0}, [Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    return-object v0
.end method
