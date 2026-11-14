.class public final Lru/okei/timetable/data/ScheduleParser;
.super Ljava/lang/Object;
.source "ScheduleParser.java"


# static fields
.field private static final BREAK:Ljava/util/regex/Pattern;

.field private static final DAY_NAMES:[Ljava/lang/String;

.field private static final EDGE_JUNK:Ljava/util/regex/Pattern;

.field private static final LEADING_NUMBER:Ljava/util/regex/Pattern;

.field private static final LI:Ljava/util/regex/Pattern;

.field private static final MANY_NEWLINES:Ljava/util/regex/Pattern;

.field private static final ROW:Ljava/util/regex/Pattern;

.field private static final SPACES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/util/regex/Pattern;

.field private static final TD:Ljava/util/regex/Pattern;

.field private static final TEACHER:Ljava/util/regex/Pattern;

.field private static final TH:Ljava/util/regex/Pattern;

.field private static final WEEK_RANGE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "\u041f\u043e\u043d\u0435\u0434\u0435\u043b\u044c\u043d\u0438\u043a"

    const-string v1, "\u0412\u0442\u043e\u0440\u043d\u0438\u043a"

    const-string v2, "\u0421\u0440\u0435\u0434\u0430"

    const-string v3, "\u0427\u0435\u0442\u0432\u0435\u0440\u0433"

    const-string v4, "\u041f\u044f\u0442\u043d\u0438\u0446\u0430"

    const-string v5, "\u0421\u0443\u0431\u0431\u043e\u0442\u0430"

    const-string v6, "\u0412\u043e\u0441\u043a\u0440\u0435\u0441\u0435\u043d\u044c\u0435"

    .line 12
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/data/ScheduleParser;->DAY_NAMES:[Ljava/lang/String;

    const-string v0, "<tr\\b[^>]*>(.*?)</tr>"

    const/16 v1, 0x22

    .line 16
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/data/ScheduleParser;->ROW:Ljava/util/regex/Pattern;

    const-string v0, "<th\\b[^>]*>(.*?)</th>"

    .line 18
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/data/ScheduleParser;->TH:Ljava/util/regex/Pattern;

    const-string v0, "<td\\b[^>]*>(.*?)</td>"

    .line 20
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/data/ScheduleParser;->TD:Ljava/util/regex/Pattern;

    const-string v0, "<li\\b[^>]*>(.*?)</li>"

    .line 22
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/data/ScheduleParser;->LI:Ljava/util/regex/Pattern;

    const-string v0, "<[^>]+>"

    .line 24
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/data/ScheduleParser;->TAG:Ljava/util/regex/Pattern;

    const-string v0, "<br\\s*/?>"

    const/4 v1, 0x2

    .line 25
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/data/ScheduleParser;->BREAK:Ljava/util/regex/Pattern;

    const-string v0, "\u043d\u0430\\s*(\\d{2})\\.(\\d{2})\\.(\\d{4})\\s*[-\u2013\u2014]\\s*(\\d{2})\\.(\\d{2})\\.(\\d{4})"

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/data/ScheduleParser;->WEEK_RANGE:Ljava/util/regex/Pattern;

    const-string v0, "^\\s*(\\d{1,2})\\s*[.)]\\s*"

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/data/ScheduleParser;->LEADING_NUMBER:Ljava/util/regex/Pattern;

    const-string v0, "([\u0410-\u042f\u0401][\u0430-\u044f\u0451]+(?:-[\u0410-\u042f\u0401][\u0430-\u044f\u0451]+)?)\\s+([\u0410-\u042f\u0401])\\.\\s*([\u0410-\u042f\u0401])?\\."

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/data/ScheduleParser;->TEACHER:Ljava/util/regex/Pattern;

    const-string v0, "[ \\t\\x0B\\f\\r]+"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/data/ScheduleParser;->SPACES:Ljava/util/regex/Pattern;

    const-string v0, "\\n\\s*\\n+"

    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/data/ScheduleParser;->MANY_NEWLINES:Ljava/util/regex/Pattern;

    const-string v0, "^[\\s.,\\-\\u2013\\u2014]+|[\\s.,\\-\\u2013\\u2014]+$"

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/data/ScheduleParser;->EDGE_JUNK:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 131
    :cond_0
    sget-object v0, Lru/okei/timetable/data/ScheduleParser;->BREAK:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 132
    sget-object v1, Lru/okei/timetable/data/ScheduleParser;->TAG:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 133
    invoke-static {p0}, Lru/okei/timetable/data/ScheduleParser;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0xa0

    const/16 v3, 0x20

    .line 134
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x200b

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 135
    sget-object v2, Lru/okei/timetable/data/ScheduleParser;->SPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 136
    sget-object v1, Lru/okei/timetable/data/ScheduleParser;->MANY_NEWLINES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static collapse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 141
    sget-object v0, Lru/okei/timetable/data/ScheduleParser;->SPACES:Ljava/util/regex/Pattern;

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dayName(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    .line 230
    sget-object v0, Lru/okei/timetable/data/ScheduleParser;->DAY_NAMES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static entity(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_3

    .line 183
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x78

    if-eq v0, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x58

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    :goto_1
    if-lez p0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    .line 187
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    return-object v1

    :cond_3
    const-string v0, "amp"

    .line 194
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "&"

    return-object p0

    :cond_4
    const-string v0, "lt"

    .line 196
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "<"

    return-object p0

    :cond_5
    const-string v0, "gt"

    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, ">"

    return-object p0

    :cond_6
    const-string v0, "quot"

    .line 200
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "\""

    return-object p0

    :cond_7
    const-string v0, "apos"

    .line 202
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "\'"

    return-object p0

    :cond_8
    const-string v0, "nbsp"

    .line 204
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, " "

    return-object p0

    :cond_9
    const-string v0, "laquo"

    .line 206
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "\u00ab"

    return-object p0

    :cond_a
    const-string v0, "raquo"

    .line 208
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "\u00bb"

    return-object p0

    :cond_b
    const-string v0, "mdash"

    .line 210
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "\u2014"

    return-object p0

    :cond_c
    const-string v0, "ndash"

    .line 212
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "\u2013"

    return-object p0

    :cond_d
    const-string v0, "hellip"

    .line 214
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "\u2026"

    return-object p0

    :cond_e
    return-object v1
.end method

.method private static indexOf(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 221
    :goto_0
    sget-object v1, Lru/okei/timetable/data/ScheduleParser;->DAY_NAMES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 222
    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static parse(Ljava/lang/String;)Lru/okei/timetable/data/WeekSchedule;
    .locals 8

    if-eqz p0, :cond_9

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 45
    :cond_0
    sget-object v0, Lru/okei/timetable/data/ScheduleParser;->WEEK_RANGE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 48
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v3, ""

    move-object v0, v3

    .line 51
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    sget-object v4, Lru/okei/timetable/data/ScheduleParser;->ROW:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 53
    :goto_1
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 54
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    sget-object v5, Lru/okei/timetable/data/ScheduleParser;->TH:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 56
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lru/okei/timetable/data/ScheduleParser;->cleanText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-static {v5}, Lru/okei/timetable/data/ScheduleParser;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    goto :goto_1

    .line 64
    :cond_3
    sget-object v6, Lru/okei/timetable/data/ScheduleParser;->TD:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_4

    .line 66
    new-instance v4, Lru/okei/timetable/data/DaySchedule;

    sget-object v6, Lru/okei/timetable/data/ScheduleParser;->DAY_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v4, v6, v5, v7}, Lru/okei/timetable/data/DaySchedule;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_4
    new-instance v6, Lru/okei/timetable/data/DaySchedule;

    sget-object v7, Lru/okei/timetable/data/ScheduleParser;->DAY_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lru/okei/timetable/data/ScheduleParser;->parseLessons(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v6, v7, v5, v4}, Lru/okei/timetable/data/DaySchedule;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 73
    :goto_2
    sget-object v5, Lru/okei/timetable/data/ScheduleParser;->DAY_NAMES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_8

    const/4 v5, 0x0

    .line 74
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 75
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/okei/timetable/data/DaySchedule;

    iget v6, v6, Lru/okei/timetable/data/DaySchedule;->index:I

    if-ne v6, v4, :cond_6

    .line 76
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/okei/timetable/data/DaySchedule;

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 81
    :cond_8
    new-instance v1, Lru/okei/timetable/data/WeekSchedule;

    invoke-direct {v1, v3, v0, p0}, Lru/okei/timetable/data/WeekSchedule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v1}, Lru/okei/timetable/fix/DateFix;->fix(Lru/okei/timetable/data/WeekSchedule;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v1

    return-object v1

    :cond_9
    :goto_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseLesson(Ljava/lang/String;)Lru/okei/timetable/data/Lesson;
    .locals 6

    .line 97
    invoke-static {p0}, Lru/okei/timetable/data/ScheduleParser;->cleanText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 102
    :cond_0
    sget-object v0, Lru/okei/timetable/data/ScheduleParser;->LEADING_NUMBER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 104
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 107
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 114
    :cond_2
    sget-object v0, Lru/okei/timetable/data/ScheduleParser;->TEACHER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lru/okei/timetable/data/ScheduleParser;->collapse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/okei/timetable/data/ScheduleParser;->trimEdges(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    move-object p0, v1

    goto :goto_1

    :cond_3
    move-object v0, v3

    move-object v4, v0

    .line 120
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p0, v4

    goto :goto_2

    :cond_4
    move-object v3, v4

    .line 124
    :goto_2
    new-instance v1, Lru/okei/timetable/data/Lesson;

    invoke-static {p0}, Lru/okei/timetable/data/ScheduleParser;->collapse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0, v3, v0}, Lru/okei/timetable/data/Lesson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static parseLessons(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lru/okei/timetable/data/Lesson;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    sget-object v1, Lru/okei/timetable/data/ScheduleParser;->LI:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 88
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/okei/timetable/data/ScheduleParser;->parseLesson(Ljava/lang/String;)Lru/okei/timetable/data/Lesson;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static trimEdges(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 145
    sget-object v0, Lru/okei/timetable/data/ScheduleParser;->EDGE_JUNK:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lru/okei/timetable/data/ScheduleParser;->collapse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x26

    .line 149
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    return-object p0

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 154
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 155
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v0, :cond_1

    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x3b

    .line 161
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ltz v5, :cond_4

    sub-int v2, v5, v2

    const/16 v6, 0xa

    if-le v2, v6, :cond_2

    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {v2}, Lru/okei/timetable/data/ScheduleParser;->entity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 170
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 173
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    move v2, v5

    goto :goto_0

    .line 163
    :cond_4
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    move v2, v4

    goto :goto_0

    .line 177
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
