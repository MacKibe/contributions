select 
    user.name as contributor,
    json_arrayagg(json_object(event.name, contribution.amount)) as contribution,
    sum(contribution.amount) as total,
    count(contribution.amount) as count
from 
    contribution
    inner join event on contribution.event = event.event
    inner join contributor on contribution.contributor = contributor.contributor
    inner join membership on contributor.membership = membership.membership
    inner join user on membership.user = user.user
group by user.name;


select name from event;